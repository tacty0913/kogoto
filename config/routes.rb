Rails.application.routes.draw do
  get "/" => "home#top"
  
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
end
