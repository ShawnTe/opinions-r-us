# Login form
get '/sessions' do
  erb :'sessions/login'
  # success
  # failed
end

# Create new session
post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password])

    session[:id] = @user.id
    current_user
    p current_user
    p "current user initiated, right>???????"
    redirect '/users/show'
  else
    @errors = ["Email and password combination do not match"]
    erb :'sessions'
  end
end


# Delete user session
delete '/sessions' do
  session[:id] = nil
  redirect '/'
end