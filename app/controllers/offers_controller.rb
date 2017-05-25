class OffersController < ApplicationController
    def new
      @shop = Shop.find(params[:shop_id])
      @offer = @shop.offers.new
    end

    def create
      @shop = Shop.find(params[:shop_id])
      @offer = @shop.offers.new(offer_params)

      if @offer.save
        redirect_to shop_path(@offer.shop)
      else
        render :new
      end
    end

    private
    def offer_params
      params.require(:offer).permit(:name, :description, :picture, :saving, :validity)
    end
end
