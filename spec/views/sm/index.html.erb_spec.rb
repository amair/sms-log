require 'rails_helper'

RSpec.describe "sm/index", type: :view do
  before(:each) do
    sms1 = build(:sm)
    @sm = sms1
  end

  it "renders a list of sms" do
    render
  end
end
