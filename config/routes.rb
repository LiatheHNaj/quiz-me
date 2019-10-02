Rails.application.routes.draw do
  post 'info', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  post 'picChooser', to: 'static_pages#chooser_meth', as: 'chooser_meth'
  get 'pic-chooser', to: 'static_pages#picChooser', as: 'picChooser'
  get 'student-info', to: 'static_pages#info', as: 'info'
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'question', to: 'static_pages#question', as: 'question'
  get 'profile', to: 'static_pages#profile', as: 'profile'
  root to: redirect('/welcome', status: 302)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
