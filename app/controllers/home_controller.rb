class HomeController < ApplicationController
  def index
    @patient = current_patient
  end
end
