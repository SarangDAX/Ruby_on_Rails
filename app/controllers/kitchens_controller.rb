
class KitchensController < ApplicationController
#     def index
#         @kitchens = Kitchen.all
#     end
    
    def show
        @item = Kitchen.find(params[:id])   
    end

    def index
        @items = Kitchen.all
    end
 
    def new
        @item = Kitchen.new 
    end

    def edit
        @item = Kitchen.find(params[:id]) 
    end

    def create
        @item = Kitchen.new(params.require(:kitchen).permit(:item_name, :item_desc))
        if @item.save
            redirect_to kitchens_path
        else
            render 'new'
        end
    end

    def update
        @item = Kitchen.find(params[:id]) 
        if @item.update(params.require(:kitchen).permit(:item_name, :item_desc))
            redirect_to kitchens_path
        else
            render 'edit'
        end
    end

    def destroy
        @item = Kitchen.find(params[:id])
        #binding.break
        @item.destroy
        redirect_to kitchens_path
    end


end