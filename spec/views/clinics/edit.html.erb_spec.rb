require 'rails_helper'

RSpec.describe "clinics/edit", type: :view do
  before(:each) do
    @clinic = assign(:clinic, Clinic.create!(
      name: "MyText"
    ))
  end

  it "renders the edit clinic form" do
    render

    assert_select "form[action=?][method=?]", clinic_path(@clinic), "post" do

      assert_select "textarea[name=?]", "clinic[name]"
    end
  end
end
