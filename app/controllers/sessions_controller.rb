class SessionsController < ApplicationController

    def welcome
    end 

    def new 
        @user = User.new 
        render :login 
    end 

    def create
    end 

    def destroy
        session.clear
        redirect_to '/'
    end 
   
end