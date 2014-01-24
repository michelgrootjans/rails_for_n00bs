class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(params.require(:character).permit(:name))
    if @character.valid?
      redirect_to "/characters/#{@character.id}"
    else
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end
end