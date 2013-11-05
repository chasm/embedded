class IdeasController < ApplicationController
  def index
    @ideas = Idea.all.entries
  end

  def show
    @idea = Idea.find_by(id: params[:id])
  end
  
  def new
    @idea = Idea.new
  end

  def create
    idea = Idea.create(idea_params)
    
    redirect_to idea_path(idea)
  end
  
  def edit
    @idea = Idea.find_by(id: params[:id])
  end

  def update
    idea = Idea.find_by(id: params[:id])
    idea.update(idea_params)
    
    redirect_to idea_path(idea)
  end

  def destroy
    @idea = Idea.find_by(id: params[:id])
    @idea.destroy
    
    redirect_to ideas_path
  end
  
  private
  
  def idea_params
    params.require(:idea).permit(:name)
  end
end