class KitchenController < ApplicationController
    def index
        @kitchens = Kitchen.all
    end
    
    def show
    end

    def new
        @kitchen = Kitchen.new 
    end

    def edit
    end
    
end