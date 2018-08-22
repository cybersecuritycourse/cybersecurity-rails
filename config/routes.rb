Rails.application.routes.draw do
  resources :logins
  resources :users

  get '/home', to: 'pages#home'
  get '/command_injection', to: 'pages#command_injection'
  get '/search1', to: 'pages#search1' # Injection - Command Injection

  get '/sql_injection', to: 'pages#sql_injection'
  get '/search2', to: 'pages#search2' # Injection - SQL Injection

  # Broken Authentication - Password Complexity => users#create

  # Broken Authentication - Information Leakage => logins#create

  # Sensitive Data Exposure => get /users/

  get '/xxe', to: 'pages#xxe'
  post '/content1', to: 'pages#content1' # XML External Entities (XXE)

  # Broken Access Control => post /users?user[admin]=1

  # Security Misconfiguration is in config/initializers/filter_parameter_logging.rb

  get '/xss', to: 'pages#xss'
  post '/content2', to: 'pages#content2' # Cross Site Scripting


  get '/insecure_deserialization', to: 'pages#insecure_deserialization'
  post '/content3', to: 'pages#content3' # Insecure Deserialization

  # Using Components with Known Vulnerabilities #=> Gemfile

  # Insufficient Logging Monitoring # post logins#create => Add log message
end
