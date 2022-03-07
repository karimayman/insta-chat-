class ChatsController < ApplicationController


    def index 
        @chat = Chat.all
    end

    def show  
        @chat = Chat.find(params[:id])       
    end

    def new 
        @chat = Chat.new
    end

    def create 
        @chat = Chat.create(chat_params)
        if @chat.save 
            flash[:success] = "chat successfully created"
    end

    def edit 
        @chat = Chat.find(params[:id])       
    end

    def update 
        @chat = chat.update(chat_params)
        if @chat.save 
            flash[:success] = "chat successfully created"
    end 

    def destroy
        @chat.find(params[:id]).destroy

    end 

    private 
    def chat_params

    params.requrie(:Chat).permit()
    
    end

end
