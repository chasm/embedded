class IdeasController < ApplicationController
  def index
    @ideas = Idea.all.entries
    
    render json: @ideas
  end

  def show
    @idea = Idea.find_by(id: params[:id])
    
    render json: @idea
  end

  def create
    idea = Idea.create(idea_params)
    
    head :created
  end

  def update
    idea = Idea.find_by(id: params[:id])
    idea.update(idea_params)
    
    head :no_content
  end

  def destroy
    @idea = Idea.find_by(id: params[:id])
    @idea.destroy
    
    head :no_content
  end
  
  private
  
  def idea_params
    params.require(:idea).permit(:name)
  end
end