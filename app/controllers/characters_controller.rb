class CharactersController < ApplicationController
  def index
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
  end

  def create
    @character = Character.create(params[:character])
    redirect_to action: :show, id: @character.id
  end
end