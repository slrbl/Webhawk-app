Rails.application.routes.draw do
  devise_for :users
  resources :incidents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"


  namespace :api do
    namespace :v1 do
      resources :incidents, only: [:create]
    end
  end


  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  root to: "incidents#index"



  post 'assign_incident', to: 'incidents#assign_incident', as: :assign_incident
  get 'find_incidents', to: 'incidents#index', as: :find_incidents

  
end
