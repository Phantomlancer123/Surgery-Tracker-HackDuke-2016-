Rails.application.routes.draw do
  resources :surgeries
  resources :status_updates
  devise_for :users

  root 'patient#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  /def patient_controller
  @surgery = Surgery.new
  <%= @surgery.patient_name %>/

end
