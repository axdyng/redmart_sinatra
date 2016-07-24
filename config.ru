require 'rubygems'
require 'bundler'

Bundler.require

#Load Model
require './models/user'

#Load Controller
require './app'

#Allow Delete and Put Request
use Rack::MethodOverride

run RedMartSinatra
