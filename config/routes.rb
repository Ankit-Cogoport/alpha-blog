Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to:'about'
end
