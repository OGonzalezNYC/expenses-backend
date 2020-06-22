Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :transactions
      resources :accounts
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end

# Because of the above two levels of namespacing, no fetch request can simply be:
# fetch('http://localhost:3000/transactions'); rather, it would need to be:
# fetch('http://localhost:3000/api/v1/transactions')
