Rails.application.routes.draw do
    devise_for :usuarios
  
    root "faturas#index"
  
    resources :faturas
    resources :condominios
    resources :relatorios do
      collection do
        get :gerar_relatorio
      end
    end
  
    namespace :api do
      namespace :v1 do
        resources :faturas, only: [:index, :show]
      end
    end
  end