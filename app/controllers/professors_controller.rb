class ProfessorsController < ApplicationController

  # GET /professors
  # GET /professors.json
  def index
    @professors = Professor.all
  end

end
