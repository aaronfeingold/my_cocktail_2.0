class UsersController < ApplicationController
  use Rack::Flash

  get '/signup' do
    erb :'users/new'
  end 
  
  post '/signup' do
    # binding.pry
    if params[:user][:password] == params[:user][:confirm_password]
      @user = User.new(:username=>params[:user][:username], :password=>params[:user][:password])
          if @user.save
            session[:user_id] = @user.id
            redirect '/cocktails'
          else
            flash.now[:error] = @user.errors.full_messages
            erb :'users/new'
          end
    else
      flash[:error] = ["Password does not match confirm password, please retry"]
      redirect to "/signup" 
    end 
  end
end  
