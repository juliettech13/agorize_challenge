class PagesController < ApplicationController
  def home
    @parents = Skill.where(parent: nil)
  end
end
