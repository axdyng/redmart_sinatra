class RedMartSinatra < Sinatra::Base
  get '/' do
    erb 'Welcome to Redmart'
  end

  # RESTFUL RESOURCES, CREATE READ UPDATE DELETE
  # - - - - - - - - - READ - - - - - - - - - #
  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get "/users/new" do
    erb :'users/new'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  get "/users/:id/edit" do
    @user = User.find(params[:id])
    erb :'users/edit'
  end
  # # # *************** END OF READ *************** # # #

  # - - - - - - - - - CREATE - - - - - - - - - #
  post "/users" do
    puts params[:user]

    @new_user = User.new(params[:user])

    if @new_user.save
      #go to all user list
      redirect("/users")
    else
      #throw an error
      erb :"users/new"
    end

  end
  # # # *************** END OF CREATE *************** # # #

  # - - - - - - - - - UPDATE - - - - - - - - - #
  put '/users/:id' do
    @updated_user = User.find(params[:id])

    if @updated_user.update_attributes(params[:user])
      redirect('/users')
    end
  end
  # # # *************** END OF UPDATE *************** # # #


  # - - - - - - - - - DELETE - - - - - - - - - #
  delete '/users/:id' do
    @deleted_user = User.find(params[:id])

    if @deleted_user.destroy
      #go to all users list
      redirect("/users")
    else
      #throw an error
      erb :"users/#{ @deleted_user.id }"
    end

  end
  # # # *************** END OF DELETE *************** # # #
end
