


Dado("tenho a url") do
    @url = CONFIG['urls']['api']
    end

Quando("é feito uma chamada get") do
    @response = HTTParty.get (@url)
end

Então("validar que é retornado os filmes corretamente") do
    expect(@response.code).to eql 200

    @response['results'].size.times do|count|
    if @response['results'][count]['director'].include?("George Lucas") && @response['results'][count]['producer'].include?("Rick McCallum")
        puts @response['results'][count]['title']
 
    end
end
end