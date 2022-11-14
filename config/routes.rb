Rails.application.routes.draw do
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  # get "/", to: "pages#home" #等同下面一行
  root "pages#home"     #只有首頁能這麼做
end
