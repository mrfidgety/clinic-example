require 'rails_helper'

RSpec.describe "clinics/show", type: :view do
  before(:each) do
    @clinic = assign(:clinic, Clinic.create!(
      name: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
