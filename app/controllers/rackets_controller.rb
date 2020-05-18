class RacketsController < ApplicationController
  def index
    @rackets = Racket.all
  end

  def show
    @racket = Racket.find(params[:id])
  end

  def new
    @racket = Racket.new
  end

  def create

  end
end
