class ArticlesController<ApplicationController
    def show
        # binding.pry
        @article=Article.find(params[:id])
    end

    def index
        @articles=Article.all
    end

    def new
        @article=Article.new
    end

    def edit
        @article=Article.find(params[:id])
    end

    def create
        @article=Article.new(params.require(:article).permit(:title,:description))
        if @article.save
            flash[:notice]="Article was created succesfully"
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article=Article.find(params[:id])
        @article.update(params.require(:article).permit(:title,:description))
        if @article.save
            flash[:notice]="Article was edited succesfully"
            redirect_to @article
        else
            render 'edit'
        end
    end
end