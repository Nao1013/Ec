Rails.application.routes.draw do
  root :to => "homes#top"
  get "/about" => "homes#about"
  
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
  
  # 顧客側
  scope module: :customer do
  end
  
  # 管理者側
  namespace :admin do
    resources :products, only: [:index, :new, :create, :show, :edit, :update]
  end
  
  # devise_for :admins
  # devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
