Rails.application.routes.draw do

  devise_for :users
  resources :organizations do
    resources :employees 
    resources :contractors
  end

  resources :employees do
    resources :payments
  end
  # resources :admin
  # resources :welcome
  # get 'employees/new'
  # get 'employees/show' => 'employees#show'
  # get 'organizations/:id' => 'employees#show'
  # patch 'employees/:id' => 'employees#update'
  # delete 'organizations/destroy'
  # get '/organizations/:id' => 'organizations#destroy'
  # delete 'employees/:id' => 'employees#destroy'
  # patch 'employees/update'
  # get 'contractors/new'
  # get 'contractors/show'
  # patch 'contractors/:id' => 'contractors#update'
  # get 'employees/:id/payments/:id'
  get 'admin/dashboard'
  get 'admin/accounts'
  get 'admin/payroll'
  get 'admin/userpage'
  get 'admin/organizations'
  get 'admin/trial'
  get 'contractors/display'

  get 'app/index'

  get 'welcome/index'
  get 'login', to: 'accounts#login'
  
  root 'organizations#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
