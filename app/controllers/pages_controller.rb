class PagesController < ApplicationController
    
    def index
         @list_data= Base.list
         @city_info_data=Base.city
    end
    
end