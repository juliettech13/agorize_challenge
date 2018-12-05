class SkillsController < ApplicationController
  def new
    @skill = Skill.new
    @parents = Skill.all.where(parent: nil)
  end

  def create
    if params[:skill][:parent].blank?
      params[:skill][:parent] = nil
    else
      params[:skill][:parent] = Skill.find(params[:skill][:parent])
    end

    @skill = Skill.new(set_params)

    if @skill.save
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
