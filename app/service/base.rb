require 'open-uri'
require 'json'
  
class Base

    @response = open("http://api.openweathermap.org/data/2.5/forecast?q=phoenix&units=imperial&APPID="+ENV['SECRET_KEY']).read
    @response.split("\n").each do |json|
        data =JSON.parse(json)
        @@list=data['list']
        @@city_info = data
    end

    def self.list
        return  @@list
    end

    def self.city
        return @@city_info
    end

end
