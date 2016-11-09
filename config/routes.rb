Rails.application.routes.draw do

  root 'portfolio#home'
  get 'portfolio/resume' => 'portfolio#resume'
  get 'portfolio/home' => 'portfolio#home'

end
