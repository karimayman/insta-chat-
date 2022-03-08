class Chat < ApplicationRecord
    belongs_to :application
    attr_accessor :token , :chat_count

    before_create :set_message_number 




    private 
    def set_message_number 
        self.message_number = generate_message_number
      end
    
      def generate_message_number
       @chat = Chat.find(token: ).order("created_at").last 
    end 
end
