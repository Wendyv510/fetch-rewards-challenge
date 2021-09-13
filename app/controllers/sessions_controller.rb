class SessionsController < ApplicationController

    def welcome
    end 

    def new 
        @user = User.new 
        render :login 
    end 

    def create
        @user = User.find_by(username: params[:user][:username]) 
        if @user && @user.authenticate(params[:user][:username]) 
            session[:user_id] = @user.id 
            redirect_to show_path
        else 
            redirect_to :login 
        end 
    end 

    def destroy
        session.clear
        redirect_to '/'
    end 
   
end