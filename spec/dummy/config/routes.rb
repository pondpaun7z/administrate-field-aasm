Rails.application.routes.draw do
  namespace :admin do
    resources :orders do
      member do
        put "/:event", to: "orders#transit_state"
      end
    end

    root to: "orders#index"
  end
end
