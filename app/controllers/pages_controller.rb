class PagesController < ApplicationController
  def home
    @skills = Skill.where(parent: nil)
  end
end
