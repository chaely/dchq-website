Rails.application.routes.draw do
  get 'features' => 'pages#features'
  get 'addons' => 'pages#addons'
  get 'install' => 'pages#install'
  get 'addons/scubatribe' => 'pages#scubatribe'
  get 'addons/xero' => 'pages#xero'
  get 'addons/mailchimp' => 'pages#mailchimp'
  get 'terms' => 'pages#terms'
  get 'privacy' => 'pages#privacy'
  get 'contact' => 'pages#contact'
  get 'knowledge' => 'pages#knowledge'
  get 'donation-success' => 'pages#donation-success'
  resources :charges
  root 'pages#home'
end
