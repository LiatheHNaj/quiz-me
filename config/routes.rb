Rails.application.routes.draw do
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'question', to: 'static_pages#question', as: 'question'
    get 'profile', to: 'static_pages#profile', as: 'profile'
  root to: redirect('/welcome', status: 302)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
