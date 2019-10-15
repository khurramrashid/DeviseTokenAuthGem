Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  namespace :api do
    namespace :v1 do

      resources :profile do
      collection do
        put :update
        end
      end

      resources :occassion
      resources :image

      resources :reservation do
        collection do
          put :update
        end
      end

      resources :resturant

      resources :about do
        collection do
          put :update
        end
      end

      resources :offer do
        collection do
          put :update
        end
      end

      resources :time_slot do
        collection do
          put :update
        end
      end

      resources :rating do
        collection do
          put :update
        end
      end

      resources :review do
        collection do
          put :update
        end
      end

    end
  end

end
