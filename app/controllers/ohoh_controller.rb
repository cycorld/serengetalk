class OhohController < ApplicationController
    before_action :authenticate_user!

    def main_serengetalk
        @dahyes = Hehe.all.reverse        
    end
    
    def send_msg
        dahye = Hehe.new
        dahye.dahye_content = params[:content]
        dahye.save
        @msg = dahye
        render layout: false
    end
    
    def output
        dahye = Hehe.new
        dahye.dahye_content = params[:content]
        dahye.save
        redirect_to '/ohoh/main_serengetalk'
    end
end