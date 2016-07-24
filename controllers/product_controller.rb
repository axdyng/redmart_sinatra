class RedMartSinatra < Sinatra::Base

  # - - - - - - - - - READ - - - - - - - - - #
  get '/products' do
    @products = Product.all
    erb :'products/index'
  end

  get '/products/new' do
    erb :'products/new'
  end

  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'products/show'
  end

  get '/products/:id/edit' do
    @product = Product.find(params[:id])
    erb :'products/edit'
  end
  # # # *************** END OF READ *************** # # #

  # - - - - - - - - - CREATE - - - - - - - - - #
  post '/products' do
    @new_product = Product.new(params[:product])

    if @new_product.save
      #go to all user list
      redirect("/products")
    else
      #throw an error
      erb :"products/new"
    end

  end
  # # # *************** END OF CREATE *************** # # #

  # - - - - - - - - - UPDATE - - - - - - - - - #
  put '/products/:id' do
    @updated_product = Product.find(params[:id])

    if @updated_product.update_attributes(params[:product])
      redirect('/products')
    end
  end
  # # # *************** END OF UPDATE *************** # # #

  # - - - - - - - - - DELETE - - - - - - - - - #
  delete '/products/:id' do
    puts params[:product]
    @deleted_product = Product.find(params[:id])

    if @deleted_product.destroy
      redirect('/products')
    else
      erb :"products/#{ @deleted_product[:id] }"
    end
  end
  # # # *************** END OF DELETE *************** # # #

end
