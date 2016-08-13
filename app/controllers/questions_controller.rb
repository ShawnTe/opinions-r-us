post '/questions/new' do
	Question.create(content: params[:content], user_id: 2)
	redirect "/"
end
