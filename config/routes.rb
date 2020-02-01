Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students

  get '/students', to: 'students#index'
  get '/student/:id', to: 'students#show'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  post '/student/:id', to: 'students#update'

end
