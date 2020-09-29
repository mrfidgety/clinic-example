require 'rails_helper'

RSpec.describe "clinics/index", type: :view do
  before(:each) do
    assign(:clinics, [
      Clinic.create!(
        name: "MyText"
      ),
      Clinic.create!(
        name: "MyText"
      )
    ])
  end

  it "renders a list of clinics" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
