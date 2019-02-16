Rails.application.routes.draw do
  get "/" => "home#top"
  
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
  post "posts/create" => "posts#create"
  post "posts/:id/delete" => "posts#delete"
end
