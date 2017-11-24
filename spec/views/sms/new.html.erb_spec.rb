require 'rails_helper'

RSpec.describe "sms/new", type: :view do
  before(:each) do
    assign(:sm, Sm.new())
  end

  it "renders new sm form" do
    render

    assert_select "form[action=?][method=?]", sms_path, "post" do
    end
  end
end
