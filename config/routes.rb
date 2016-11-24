Rails.application.routes.draw do
  #get 'organizations/index'

  # get 'employees/index'

  resources :organizations do
    resources :employees
  end
  # resources :admin
  # resources :welcome
  get 'employees/new'
  post 'employees/show'
  get 'admin/dashboard'
  get 'admin/accounts'
  get 'admin/payroll'
  get 'admin/userpage'

  get 'app/index'

  get 'welcome/index'
  get 'login', to: 'accounts#login'
  
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
