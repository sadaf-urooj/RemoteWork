Rails.application.routes.draw do

  root 'home#index'
  root :to => 'freelancers/jobs#index', :constraints => lambda { |request| request.env['warden'].user.class.name == 'Freelancer' }, :as => "freelancer_root"
  root :to => 'clients/jobs#index', :constraints => lambda { |request| request.env['warden'].user.class.name == 'Client' }, :as => "client_root"

  # root 'freelancers/jobs#index'

  devise_for :freelancers, :controllers => { :registrations => :registrations }
  devise_for :clients, :controllers => { :registrations => :registrations }

  namespace :clients do
    resources :contracts
    resources :proposals
    resources :jobs
  end

  namespace :freelancers do
    resources :contracts
    resources :proposals
    resources :jobs

  end

   resources :freelancers
end