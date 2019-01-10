require "sinatra"
require "googlebooks"
require "./books"



get "/" do
    erb :index
end

post "/result" do
book = params[:query]
@books = GoogleBooks.search(book).first

erb :result
end