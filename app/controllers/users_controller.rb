class UsersController < ApplicationController
  use Rack::Flash

  get '/signup' do
    erb :'users/new'
  end 
  
  post '/signup' do
    # binding.pry
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect '/cocktails'
    else
      flash.now[:error] = @user.errors.full_messages
      erb :'users/new'
    end
  end 
end  
