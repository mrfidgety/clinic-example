require 'rails_helper'

RSpec.describe 'Appointments' do
  let(:patient) do
    Patient.create!(email: 'test@hotdoc.com.au', password: 'password')
  end

  before do
    sign_in patient
  end
end
