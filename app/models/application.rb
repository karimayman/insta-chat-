class Application < ApplicationRecord
  has_many :chats , dependent: :destroy
  attr_accessor :chat_count

  before_create :set_access_token
  after_initialize :init

  def init
    self.chat_count   ||= 0         #will set the default value only if it's nil
  end

    private
  
    def set_access_token
      self.token = generate_token
    end
  
    def generate_token
      loop do
        token = SecureRandom.hex(10)
        break token unless Application.where(token: token).exists?
      end
    end
end
