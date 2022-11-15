Rails.application.routes.draw do
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/make_a_wish", to: "wish_list#card"
  get "/new_wish", to: "wish_list#new_wish"
  post "/create_card", to:"wish_list#create_card"


  # get "/", to: "pages#home" #等同下面一行
  root "pages#home"     #只有首頁能這麼做
end
