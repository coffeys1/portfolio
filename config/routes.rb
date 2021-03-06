Rails.application.routes.draw do

  resources :folders
  resources :content_items

  get 'newfolder' => 'folders#new'
  post 'newfolder' => 'folders#create'

  get 'newitem' => 'content_items#new'
  post 'newitem' => 'content_items#create'

  get '/portfolio/update_content' => 'portfolio#update_content'

  root 'portfolio#home'
  get 'resume/show' => 'resume#show'
  get 'portfolio/home' => 'portfolio#home'

end
