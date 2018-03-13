class WeddingDressesController < ApplicationController
  def index
    @weddingdress = WeddingDress.all
  end

  def show
    @weddingdress = WeddingDress.find_by id: params[:id]
  end

  def new
    @weddingdress = WeddingDress.new
  end

  def edit

  end

  def create
    a = WeddingDress.new(params.require("wedding_dress").permit(:name, :size, :color, :price))
    a.save
    redirect_to wedding_dresses_path
  end

  def destroy
    @weddingdress = WeddingDress.find_by id: params[:id]
    @weddingdress.destroy
    redirect_to wedding_dresses_path
  end
end
