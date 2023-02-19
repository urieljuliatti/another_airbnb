Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :rooms, only: [:index] do
    resources :bookings do
      member do
        post 'checkin', to: 'bookings#checkin'
        delete 'checkout', to: 'bookings#destroy'
      end
    end
  end

end
