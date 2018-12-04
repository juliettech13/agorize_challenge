class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(set_params)
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
