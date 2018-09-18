Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , :only => [:index, :show, :create] do
    resources :ellipticals , :only => [:index, :show, :create]
    resources :sugars , :only => [:index, :show, :create]
    resources :carbs , :only => [:index, :show, :create]
    resources :weights , :only => [:index, :show, :create]
    resources :lifts , :only => [:index, :show, :create]
  end
end
