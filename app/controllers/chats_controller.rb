class ChatsController < ApplicationController


    def index 
        @chats =  Chat.all
        render json: @chats
    end

    def show  
        @chats =  Chat.find(params[:id])  
        render json: @chats   
    end

  

    def create
        @chats =  Chat.create(chat_params)
        render json: @chats
       
    end

   

    def update 
        @chats =  Chat.update(chat_params)
        render json: @chats
     
    end 

    def destroy
        @chats =  Chat.find(params[:id]).destroy
        render json: @chats

    end 

    private 
    def chat_params

    params.permit(:id, :message_body , :message_count , :message_number , :application_token)
    
    end

end
