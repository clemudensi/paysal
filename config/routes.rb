Rails.application.routes.draw do
  # get 'employees/first_name:string'

  # get 'employees/last_name:string'

  # get 'employees/middle_name:string'

  # get 'employees/gender:string'

  # get 'employees/date_of_birth:date'

  # get 'employees/employee_id:string'

  # get 'employees/bank_account_id:integers'

  # get 'employees/job_title:string'

  # get 'employees/organizational_id:integers'

  # get 'employees/date_joined_company:date'

  # get 'employees/date_left_company:date'

  # get 'employees/residential_address:text'
  resources :employees
  # resources :admin
  # resources :welcome
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
