Embedder::Application.routes.draw do
  resources :ideas
  
  root 'ideas#index'
end
