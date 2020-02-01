Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
resources :students, only: [:index, :show]

  # get '/students', to: 'students#index'
  # get '/students', to: 'students#create'
  # get '/students/:id', to: 'students#show'




end
