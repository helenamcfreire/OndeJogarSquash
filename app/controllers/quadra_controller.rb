class QuadraController < ApplicationController

  def home

  end

  def list
    @quadras = Quadra.find_all_by_cidade_id(params[:cidade]) if params[:cidade]
    render json: @quadras
  end

  def new
    @quadra = Quadra.new
  end

  def create
    @quadra = Quadra.new(params[:quadra])
    @quadra.save

    render :new
  end

end