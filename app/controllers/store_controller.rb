class StoreController < ApplicationController
  def new
    @store = Store.new
    @stores = Store.all
  end

  def create
    @Store = Store.new(store_params)
    if @store.save
      redirect_to new_store_path
    end
  end

  private
  def store_params
    params.require(:store).permit(:store_id, :name, :address)
  end
end