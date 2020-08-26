Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/crm', as: 'rails_admin'

  scope "/api", defaults: {format: :json} do
    resources :partners
    resources :leads
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
