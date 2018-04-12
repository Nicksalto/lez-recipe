require 'sinatra'
require_relative 'dm'


get '/' do
  @page_title = "Home"
  erb :index
end

get '/sign_up' do
  @page_title = "Sign Up"
  erb :sign_up
end

get '/login' do
  @page_title = "Login"
  erb :login
end

post '/sign_up_accept' do
  @page_title = "Sign Up"
  user= User.create(params)
  redirect '/'
end

post '/login_accept' do
  @page_title = "Login"
  user_email= params[:email]
  user_password= params[:password]
  record_email= User.first(:email => params[:email])

  if user_email == record_email.email 
    redirect '/'
  else
    redirect '/login'
  end
end

get '/restrict' do
  @page_title = "Restricted Area"
  "This is a restricted area welcome"
end
