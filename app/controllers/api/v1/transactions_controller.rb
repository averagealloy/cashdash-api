class Api::V1::TransactionsController < ApplicationController

    before_action :set_account

    def index
       @transactions = @account.transaction
       render json: @transactions
    end 
   
    def show
        @transaction = Transaction.find(params[:id])
        render json: @transaction    
    end 
    
    def create
      @transaction = @account.transactions.new(transaction_params)
      if @account.update_balance(@transaction) != 'you dont have the money'
        @transaction.save
        render json: @transaction
      else
        render json: {error: 'you dont have the money'}
      
      end

    end
    
    private

    def set_account
        @account = Account.find(params[:accoint_id])
    end

    def transaction_params
        params.require(:transaction).permit(:amount, :account_id, :kind, :date, :about)
    end 

end
