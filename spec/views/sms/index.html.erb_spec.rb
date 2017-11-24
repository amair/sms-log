require 'rails_helper'

RSpec.describe "sms/index", type: :view do
  before(:each) do
    assign(:sms, [
      Sm.create!(),
      Sm.create!()
    ])
  end

  it "renders a list of sms" do
    render
  end
end
