Rails.application.routes.draw do

  root 'portfolio#home'
  get 'resume/show' => 'resume#show'
  get 'portfolio/home' => 'portfolio#home'

end
