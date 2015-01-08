class StaticPagesController < ApplicationController
  def index
    
  end

  def about

  end

  def coaches
    @dow = User.all 
  end

  def software_coaches
    @software_coaches = User.where(specialty: "Software")
  end

  def consulting_coaches
    @consulting_coaches = User.where(specialty: "Consulting")
  end

  def finance_coaches
    @finance_coaches = User.where(specialty: "Finance")
  end

end
