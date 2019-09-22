class PagesController < ApplicationController
    
    def index
         @list_data= Base.list
         @city_info_data=Base.city_info
    end
    
end