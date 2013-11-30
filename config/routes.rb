DeviseRspecCucumber::Application.routes.draw do
  authenticated :user do
    root to: "users#index", as: :authenticated_root
  end

  unauthenticated do
    root to: "home#index", as: :unauthenticated_root
    devise_for :users
  end


  # root :to => "home#index"
  # devise_for :users
end

