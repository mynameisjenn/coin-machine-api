class Api::TransactionsController < ApplicationController
	before_action :verify_user, only: [:index, :create]

	def index
		@transactions = Transaction.where(user_id: @current_user.id)
		render 'index.json.jbuilder'
	end

	def new
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(transaction_params)
		@transaction.user_id = @current_user.id

		if @transaction.save 
			render json: 'show.json.jbuilder'
		else
			render json: @transaction.errors.full_messages 
		end
	end

	def update

	end

	def show
		@transaction = Transaction.find(params[:id])
		render 'show.json.jbuilder'
	end


private
  		def transaction_params
    		params.require(:transaction).permit(:coin_id, :deposited)
  		end
end
