
get '/users/new' do
  p "in the suers/new route"
  erb :'/users/new'
end

get '/users/:id' do
  erb :'/users/show'
end

post '/users' do
    user = User.new(params[:user])
    @error = user.errors.full_messages
      if user.save
        session[:id] = user.id
        current_user
        redirect '/users/show'
      else
        @error
        erb :'users/new'
      end
    
end