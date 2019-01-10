require "sinatra"
require "googlebooks"
require "./books"



get "/" do
    html = erb (:index)
    if params[:queries]
        book = params[:queries]
        
        @books = GoogleBooks.search(book) 

        html += erb (:results)
    end
    html
end

post "/result" do
    book = params[:query]
    @books = GoogleBooks.search(book).first

erb :result
end

# post "/results" do
#     book = params[:queries]
#     @books = GoogleBooks.search(book)

#     erb :results
# end
