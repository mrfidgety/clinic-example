require 'rails_helper'

RSpec.describe "clinics/new", type: :view do
  before(:each) do
    assign(:clinic, Clinic.new(
      name: "MyText"
    ))
  end

  it "renders new clinic form" do
    render

    assert_select "form[action=?][method=?]", clinics_path, "post" do

      assert_select "textarea[name=?]", "clinic[name]"
    end
  end
end
