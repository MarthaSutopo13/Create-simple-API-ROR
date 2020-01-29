Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user do
      collection do
      post '/login', to: 'user#login_user'
    end
  end
end
