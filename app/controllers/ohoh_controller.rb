class OhohController < ApplicationController
    before_action :authenticate_user!

    def main_serengetalk
        @dahyes = Hehe.all.reverse        
    end
    
    def output
        dahye = Hehe.new
        dahye.dahye_content = params[:content]
        dahye.save
        redirect_to '/ohoh/main_serengetalk'
    end
end