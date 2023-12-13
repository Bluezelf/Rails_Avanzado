Myrottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews
  end
  root :to => redirect('/movies')
  get  'auth/:provider/callback' => 'sessions#create'
  get  'auth/failure' => 'sessions#failure'
  get  'auth/twitter', :as => 'login'
  post 'logout' => 'sessions#destroy'
  put "movies/:id" => "movies#update"
end

