class Api::ClinicsController < Api::BaseController
  def index
    render json: clinic_json
  end

  private

  def clinic_json
    Clinic.all.map do |clinic|
      clinic.as_json
    end.to_json
  end
end
