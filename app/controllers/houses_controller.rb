class HousesController < ApplicationController
    def index 
        render json: House.all, status: :ok
    end 

    def show
        house = House.find(params[:id])
        render json: house, include: :address, status: :ok
    end 

    def create
        house = House.create!(house_params)
        render json: house, status: :created
    end 

    def update 
       #Review error handling and create a rescue for RecordNotFound
        #Add the ! to update so it raises an exception

        house = House.find(params[:id])
        house.update!(house_params)
        render json: house, status: :accepted
    end 

    def destroy
        house = House.find(params[:id])
        house.destroy
        head :no_content 
    end 

    private
    
    #Review strong params and why they are useful with updates
    def house_params
        params.permit(:id, :address, :state, :zip, :city, :sq_ft, :user_id, :image)
    end 

end
