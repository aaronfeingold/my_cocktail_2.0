require './config/environment'



use Rack::MethodOverride


use SessionsController
use CocktailsController
use UsersController
run ApplicationController

