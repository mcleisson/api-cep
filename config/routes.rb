Rails.application.routes.draw do
  devise_for :users
  post 'zip_code', to: 'search_code#show'
  namespace :api, defaults: {format: :json} do
    namespace :v1 do 
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
        post 'zip_code', to: 'search_code#show'
      end
    end
  end
end