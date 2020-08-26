Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/crm', as: 'rails_admin'

  scope "/api", defaults: {format: :json} do
    resources :partners
    resources :leads
    resources :student_testimonies
    resources :famous_testimonies
  end
end
