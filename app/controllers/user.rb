get '/user/new' do

  erb :"user_views/new"
end

get '/user/sign_in' do
  erb :"user_views/sign_in"
end

get '/user/sign_out' do
  p session
  session[:user_id] = nil
  redirect to('/')
end

get '/user/delete' do
  @user = User.find(session[:user_id])
  session.clear
  @user.destroy
  redirect to('/')
end

get '/user/edit/:id' do
  @user = User.find(session[:user_id])
  redirect to("/") if @user.id != params[:id].to_i
  erb :"user_views/edit"
end

get '/user/:id' do
  @user = User.find(session[:user_id])
  p session[:user_id]
  p @user.id
  redirect to("/") if @user.id != params[:id].to_i
  erb :"user_views/show"
end

post '/user/new' do

  user = User.new({
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    })
  if user.save
    session[:user_id] = user.id
    redirect to("/user/#{user.id}")
  else
    @errors = user.errors.messages
    erb :"user_views/new"
  end
end

post '/user/sign_in' do
  user = User.find_by_email(params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect to("/user/#{user.id}")
  else
    @errors = {:Invalid=>["Incorrect Login"]}
    erb :"user_views/sign_in"
  end
end

post '/user/edit' do
  @user = User.find(session[:user_id])

  if @user && @user.authenticate(params[:current_password])
    @user.update({
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })
    if @user.save
      redirect to("/user/#{@user.id}")
    else
      @errors = @user.errors.messages
      erb :"user_views/edit"
    end
  else
    @errors = {:Invalid=>["Incorrect Information"]}
    erb :"user_views/edit"
  end
end
