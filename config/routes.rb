Rails.application.routes.draw do
  devise_for :users
    get 'post/index'
    get 'posts/new' => "posts#new"

    get 'top' => "home#top"
    get '/' => "home#select"
    
    get '/:id' => "home#top"
    
    
    
    post '/create' => "home#create"
    post '/destroy' => "home#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
