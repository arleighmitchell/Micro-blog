require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:test.sqlite3"
set :sessions, true

def current_user
	if session[:user_id]
	  @current_user = User.find(session[:user_id])
	end
end

get '/' do
  @users = User.all
  @posts = Post.all

  erb :home
end

get "/sign-out" do
	session.clear
	redirect "/"
end

post '/sign-in' do
	p params.inspect

	user = User.where(username: params[:username]).first

	if user.password == params[:password]
		session[:user_id] = user.id
		redirect '/'
	else
		redirect '/login-failed'
	end
end
get "/sign-in" do
	erb :sign_in
end

post '/sign-up' do
	p params

	username = params[:username]
	first_name = params[:first_name]
	last_name = params[:last_name]
	age = params[:age]
	password = params[:password]

	User.create(username:   username,
				last_name:  last_name,
				first_name: first_name,
				age:        age,
				password:   password
				)

	redirect '/sign-in'
end

get '/sign-up' do
	erb :sign_up
end

get '/posts/:id' do
	@user = User.find(params[:id])
	erb :posts
end

post '/create-post' do
	p params.inspect

	user_id = User.where(username: params[:username]).first.id
	body = params[:body]

	Post.create(user_id: user_id,
				body:    body
					)

	redirect '/'
end