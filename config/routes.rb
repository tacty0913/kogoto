Rails.application.routes.draw do
  get "/" => "home#top"
  
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
  get "posts/create" => "posts#create_form"
  post "posts/create" => "posts#create"
  post "posts/:id/delete" => "posts#delete"
end
