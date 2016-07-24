require 'rubygems'
require 'bundler'

Bundler.require

#Load Model
require './models/user'
require './models/product'

#Load Controller
require './app'
require './controllers/product_controller'

#Allow Delete and Put Request
use Rack::MethodOverride

run RedMartSinatra
