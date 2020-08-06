class CocktailsController < ApplicationController

  get '/cocktails' do
    #show the user all their cocktails they've added, if any yet
    # if you go to localhost:9393/cocktails w/o being logged in, it should redirect you to login screen
    if logged_in?
      @cocktails = current_user.cocktails
      erb :'/cocktails/index.html'
    elsif !logged_in?
      redirect '/login'
    end 
  end

  get '/cocktails/new' do
    # stipulation: you must be a user and logged_in in order to create a new cocktail
    @cocktail = Cocktail.new
    if logged_in?
        erb :'/cocktails/new.html'
    else
      redirect to "/login"
    end
  end

  post '/cocktails' do
    @cocktail = Cocktail.new(params[:cocktail])
    if @cocktail.save
      current_user.cocktails << @cocktail
      redirect '/cocktails'
    else
      flash.now[:error] = @cocktail.errors.full_messages
      erb :'cocktails/new.html'
    end
  end

  get '/cocktails/:id/edit' do
    if !logged_in?
      flash[:error] = ["You must be logged in to edit your cocktails"]
      redirect "/login"
    else 
      set_cocktail
        if set_cocktail.user_id == current_user.id
          erb :'/cocktails/edit.html'
        else
          flash[:error] = ["This user does not have access to edit this cocktail"]
          redirect "/cocktails"
        end
    end
  end

  get '/cocktails/:id' do
    # this will give anyone --even non-users--access to view any given publically available cocktails
    # but so what? we have it setup such that only if current_user.id = cocktail.user_id
    # then will the program allow a user to edit or destroy the cocktail
    set_cocktail
      if set_cocktail
        erb :'cocktails/show.html'
      else
        redirect '/cocktails'
      end
  end

  patch '/cocktails/:id' do
    # a user can ONLY edit the cocktails THEY have created,
    # and CANNOT edit public cocktails created by another user
    if !logged_in?
      flash[:error] = ["Please login to update your cocktails"]
      redirect "/login"
    else 
      set_cocktail
        if current_user.id == set_cocktail.user_id
          if set_cocktail.update(
              name: params[:cocktail][:name],
              base_liquor: params[:cocktail][:base_liquor],
              ingredients: params[:cocktail][:ingredients]
            )
            redirect "/cocktails/#{set_cocktail.id}"
          else
            flash[:error] = ["Could not update"]
            erb :'cocktail/edit.html'
          end
        end
    end
  end

  delete '/cocktails/:id' do
    if !logged_in?
      flash[:error] = ["You must be logged in to update your cocktails"]
      redirect "/login"
    elsif logged_in?
      set_cocktail
        if current_user.id == set_cocktail.user_id
          # if this doesn't match, the user won't be able to delete the cocktail
          set_cocktail.destroy
          flash[:notice] = "Cocktail Deleted"
          redirect '/cocktails'
        else
          flash[:error] = ["You do not have access to delete this cocktail"]
          redirect '/cocktails' 
        end
    end 
  end

  private
    def set_cocktail
      @cocktail = Cocktail.find_by_id(params[:id])
    end

end
