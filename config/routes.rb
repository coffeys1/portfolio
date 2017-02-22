Rails.application.routes.draw do

  get 'folders/new'

  get 'folders/edit'

  get 'folders/update'

  get 'folders/delete'

  root 'portfolio#home'
  get 'resume/show' => 'resume#show'
  get 'portfolio/home' => 'portfolio#home'

end
