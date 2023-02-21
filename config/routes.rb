Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :rooms, only: [:index] do
    resources :bookings do
      member do
        post 'checkin', to: 'bookings#create'
        delete 'checkout', to: 'bookings#destroy'
      end
    end
  end

  namespace :admin do
    resources :booking_histories, only: [:index, :update]
    resources :rooms, only: %i[new create]
  end

end
