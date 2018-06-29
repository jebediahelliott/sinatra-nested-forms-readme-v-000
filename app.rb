require_relative 'config/environment'

class App < Sinatra::Base

  get '/new' do
    erb :new
  end

  post '/new' do
    @student = Student.new(params[:student])

    params[:student][:course].each do |details|
      Course.new(details)
    end

    @courses = Course.all

    erb :student
  end

end
