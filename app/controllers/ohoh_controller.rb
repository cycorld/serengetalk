class OhohController < ApplicationController
    before_action :authenticate_user!
    
    def new.html
        
    end

    def main_serengetalk
        @chat1 = Hehe.where(chat_type: "chat1").reverse
        @chat2 = Hehe.where(chat_type: "chat2").reverse
    end
    
    def send_msg
        @msg = Hehe.new
        @msg.chat_type = params[:type]
        @msg.user_id = current_user.id
        @msg.name = current_user.name
        @msg.univ = current_user.univ
        @msg.content = params[:content]
        @msg.save
        render layout: false
    end
end