require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name/:age" do
    @user_name = params[:name].to_i
    @age = params[:age].to_i
    "Hello #{@user_name * @age}, you are #{@age}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end

end