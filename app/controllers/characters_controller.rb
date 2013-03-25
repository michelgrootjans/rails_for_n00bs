class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character])
    if @character.valid?
      @character.save
      redirect_to action: :show, id: @character.id
    else
      render :new
    end
  end
end