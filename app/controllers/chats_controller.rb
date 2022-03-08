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
        @chat_number = Chat.find(token: @chats.token).order("created_at").last.increment!
        @chats.chat_count = @chat_number
        @chats.save

        @applications = Application.find(token :@chats_token)
        @applications.update(chat_count: @chat_number) 
        render json: @chats
       ss
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
