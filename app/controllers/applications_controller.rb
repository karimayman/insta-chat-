class ApplicationsController < ApplicationController

    def index 

        @applications =  Application.all
        render json: @applications
    end

    def show  
        @applications =  Application.find(params[:id])
        render json: @application       
    end


    def create
        @applications =  Application.create(application_params)

        
       # @applications.save


        render json: @applications
        
    end

    def edit 
        @applications.find(params[:id])
    end

    def update 
        @applications=  Application.update(application_params)
        render json: @applications
        
    end 

    def destroy
        @applications= Application.find(params[:id]).destroy
        render json: @applications

    end 

    private 
    def application_params

    params.permit(:id, :name)
    
    end
end
