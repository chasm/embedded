Embedder::Application.routes.draw do
  resources :ideas, except: [ :new, :edit ]
  
  # root 'welcome#index'
end
