class RedMartSinatra < Sinatra::Base
  get '/' do
    erb 'Welcome to Redmart'
  end

  # RESTFUL RESOURCES, CREATE READ UPDATE DELETE
  #READ
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
    erb :'users/edit'
  end
  ##end of READ

  #CREATE
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
  ##end of CREATE

  #UPDATE



end
