class RacketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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
