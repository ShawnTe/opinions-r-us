post '/questions/new' do 
	Question.create(content: params[:content], user_id: session[:id])
	redirect "/"
end