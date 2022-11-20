Rails.application.routes.draw do
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"

  resources :wish_lists
  resource :user, as: "users" do
    collection do
      get :login
    end
  end

  resource :session, only: [:create, :destroy]

  # get "/", to: "pages#home" #等同下面一行
  #root "pages#home"     #只有首頁能這麼做
  root "wish_lists#index"
end
