class ApplicationsController < ApplicationController

    def index 
        @applications = Application.all
    end

    def show  
        @application = Application.find(params[:id])       
    end

    def new 
        @application = Application.new
    end

    def create 
        @application = Application.create(application_params)
        if @application.save 
            flash[:success] = "application successfully created"
    end

    def edit 
        @application.find(params[:id])
    end

    def update 
        @application = Application.update(application_params)
        if @application.save 
            flash[:success] = "application successfully created"
    end 

    def destroy
        @application.find(params[:id]).destroy

    end 

    private 
    def application_params

    params.requrie(:Application).permit()
    
    end
end
