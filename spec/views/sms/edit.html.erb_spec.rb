require 'rails_helper'

RSpec.describe "sms/edit", type: :view do
  before(:each) do
    @sm = assign(:sm, Sm.create!())
  end

  it "renders the edit sm form" do
    render

    assert_select "form[action=?][method=?]", sm_path(@sm), "post" do
    end
  end
end
