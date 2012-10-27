MongoidCancanBug::Application.routes.draw do
  resources :profiles, only: [:index]
end
