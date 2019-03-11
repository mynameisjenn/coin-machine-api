class Api::CoinsController < ApplicationController

	def index
		@coins = Coin.all
		@coins.total
		render 'index.json.jbuilder'
	end

	def new
		@coin = Coin.new
	end

	def create
		@coin = Coin.new(coin_params)

		if @coin.save
			render 'show.json.jbuilder'
		else
			render json: @coin.errors.full_messages, status: :unprocessable_entity
		end
	end

	def show
		@coin = Coin.find(params[:id])
		render 'show.json.jbuilder'
	end

	def update
		@coin = Coin.find(params[:id])
		@coin.name = params[:name] || @product.name
    	@coin.value = params[:value] || @product.value

    	if @coin.save
      		render 'show.json.jbuilder'
    	else
      		render json: @coin.errors.full_messages, status: :unprocessable_entity
    	end
	end

	def destroy
    	@coin = Coin.find(params[:id])
    	@coin.destroy
    	render json: "Coin successfully destroyed."
	end

private
  		def coin_params
    		params.require(:coin).permit(:name, :value)
  		end
end
