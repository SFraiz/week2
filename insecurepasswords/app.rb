require 'sinatra'
require "sinatra/reloader" if development?
require 'pry'

require_relative 'lib/passwordchecker.rb'
require_relative 'lib/user.rb'

@@users = [User.new("jake", "12345"), User.new("pepe", "12345")]

enable(:sessions)

before '/profile' do
   unless session[:logged_in] 
    redirect to('/')
	end
end


get '/' do
  erb(:index)
end

post '/register' do
	@user = User.new(params[:username], params[:password])
	@@users << @user
	session[:username] = params[:username]
	session[:logged_in] = true
	redirect to('/profile')
end

post '/login' do
	user_valid = @@users.find {|user| user.name == [params:name] && user.password == [params :password]}
	if user_valid?(params[:username], params[:password])
		session[:username] = params[:username]
		session[:logged_in] = true
		redirect to('/profile')
	else
		redirect to('/')
	end
end

get '/profile' do
	erb(:profile)
end

get '/logout' do
	session[:logged_in] = false
	redirect to("/")
end


