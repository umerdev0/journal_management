Rails.application.routes.draw do
  resources :journals do
    resources :entries
  end
end
