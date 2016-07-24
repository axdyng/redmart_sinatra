class RedMartSinatra < Sinatra::Base

  # - - - - - - - - - READ - - - - - - - - - #
  get '/products' do
    @products = Product.all
    erb :'products/index'
  end

  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'products/show'
  end
  # # # *************** END OF READ *************** # # #

  # - - - - - - - - - CREATE - - - - - - - - - #
  post '/products' do

  end
  # # # *************** END OF CREATE *************** # # #

  # - - - - - - - - - UPDATE - - - - - - - - - #
  put '/products/:id' do

  end
  # # # *************** END OF UPDATE *************** # # #

  # - - - - - - - - - DELETE - - - - - - - - - #
  delete '/products/:id' do

  end
  # # # *************** END OF DELETE *************** # # #

end
