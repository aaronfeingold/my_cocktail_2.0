class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/new'
  end 

  post '/login' do
    @user = User.find_by_username(params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect '/cocktails'
      else  
        flash.now[:error] = ["Username or password didn't match"]
        erb :'sessions/new'
      end 
  end 

  get '/logout' do
    session.clear
    flash[:notice] = "You have successfully logged out"
    redirect '/'
  end 
end 