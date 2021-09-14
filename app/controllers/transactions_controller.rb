class TransactionsController < ApplicationController

    def index 
        @transactions = Transaction.all 
    end 

    def new
        @transaction = Transaction.new 
    end 

    def create
        @transaction = Transaction.new(transaction_params)
        current_user.transactions.build 
            if @transaction.save 
                redirect_to user_path(@user) 
            else 
                render :new 
            end 
    end 

    private 

    def transaction_params
        params.require(:transaction).permit(:payer, :points, :date, :user_id)
    end



end
