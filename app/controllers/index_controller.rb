get '/' do
  @questions = Question.all
  erb :index
end

get '/search' do
  @questions = []
  content_match = Question.where(["content LIKE ?", "%#{params[:query]}%"])
  user_match = User.where(["name LIKE ?", "%#{params[:query]}%"])
  user_match.each do |user|
    user.questions.each do |question|
      @questions << question
    end
  end
  if content_match
    content_match.each do |question|
      @questions << question
    end
  end
  erb :index
end
