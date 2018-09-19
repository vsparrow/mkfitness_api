Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , :only => [:index, :show, :create] do
    resources :ellipticals , :only => [:index, :show, :create, :update]
    resources :sugars , :only => [:index, :show, :create, :update]
    resources :carbs , :only => [:index, :show, :create, :update]
    resources :weights , :only => [:index, :show, :create, :update]
    resources :lifts , :only => [:index, :show, :create, :update]
    resources :waist_sizes , :only => [:index, :show, :create, :update]
  end
end
