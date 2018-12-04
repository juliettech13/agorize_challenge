class SkillsController < ApplicationController
  def new
    @skill = Skill.new
    @children = Skill.all.where(parent: nil)
  end

  def create
    @parent = Skill.find(params[:skill][:parent])
    params[:skill][:parent] = Skill.find(params[:skill][:parent])
    @skill = Skill.new(set_params)
    @skill.parent = @parent
    if @skill.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:skill).permit(:name, :parent)
  end
end
