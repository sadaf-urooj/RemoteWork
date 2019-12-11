Rails.application.routes.draw do

  devise_for :clients
  devise_for :freelancers
  namespace :clients do
    resources :jobs
  end
  namespace :freelancers do
    resources :jobs
  end
end



