class Category <ApplicationRecord
    validates:name, presence:true,length:{minimum:4,maximum:20},uniqueness:{case_sensitive:false}
    has_many :article_categories
    has_many :articles,through: :article_categories
end