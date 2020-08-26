Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/crm', as: 'rails_admin'

  scope "/api", defaults: {format: :json} do
    resources :partners
    resources :leads
    resources :student_testimonies
    resources :famous_testimonies

    controller 'leads' do
      get '/leads-overview' => :overview
    end
  end
end
