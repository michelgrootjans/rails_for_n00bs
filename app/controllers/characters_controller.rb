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
    if @character.save
      redirect_to @character, notice: t("views.characters.create.success")
    else
      render :new
    end
  end
end