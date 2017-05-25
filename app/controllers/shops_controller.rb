class ShopsController < ApplicationController
    def index
      @shops = Shop.all
      render :index
    end

    def show
      @shop = Shop.find(params[:id])
      render :show
    end

    def new
      @shop = Shop.new
      render :new
    end

    def create
      @shop = Shop.new(shop_params)
      if @shop.save
        redirect_to shops_path
      else
        render :new
      end
    end

    def update
      @shop = Shop.find(params[:id])
      if @shop.update(shop_params)
        redirect_to shops_path
      else
        render :edit
      end
    end

    def destroy
      @shop = Shop.find(params[:id])
      @shop.destroy
      redirect_to shops_path
    end

    private
    def shop_params
      params.require(:shop).permit(:name, :address, :area, :description, :picture, :opening_hours, :contact, :website)
    end
end
