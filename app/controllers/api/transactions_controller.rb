class Api::TransactionsController < ApplicationController

	def index
		@transactions = Transaction.all
		render 'index.json.jbuilder'
	end

	def new
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(transaction_params)
		@coin = Coin.find(params[:transaction][:coin_id])

		if @transaction.save && @transaction.deposited == true && @coin.name == "quarter"
			@coin.update(value: @coin.value + 0.25)
			render 'show.json.jbuilder'
		elsif @transaction.save && @transaction.deposited == true && @coin.name == "dime"
			@coin.update(value: @coin.value + 0.10)
			render 'show.json.jbuilder'
		elsif @transaction.save && @transaction.deposited == true && @coin.name == "nickel"
			@coin.update(value: @coin.value + 0.05)
			render 'show.json.jbuilder'
		elsif @transaction.save && @transaction.deposited == true && @coin.name == "penny"
			@coin.update(value: @coin.value + 0.01)
			render 'show.json.jbuilder'
		else
			render json: @transaction.errors.full_messages, status: :unprocessable_entity
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
    		params.require(:transaction).permit(:coin_id, :deposited, :user_id)
  		end
end
