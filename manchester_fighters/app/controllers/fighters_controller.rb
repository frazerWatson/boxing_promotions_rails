class FightersController < ApplicationController
  def index
  end

  def new
    @fighter = Fighter.new
  end

  def create 
    @fighter =  Fighter.create(fighter_params)
     if @rfighter.save
      redirect_to fighter_path
    else
      render :new
    end
    redirect_to '/fighters/show'
  end

  def show
    @fighters = Fighter.all
  end
end
