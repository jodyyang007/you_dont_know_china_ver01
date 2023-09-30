class NaturesController < ApplicationController

  
  def index
    @natures = Nature.all
  end

  def new
    @nature = Nature.new
  end

def create
  @nature = Nature.new(nature_params)
  if @nature.save
    redirect_to natures_path, notice: "Nature was successfully created."
  else
    render :new
  end
end

  private

  def nature_params
    params.require(:nature).permit(:title, :details, :image)
  end
end