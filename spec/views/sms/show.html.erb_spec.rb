require 'rails_helper'

RSpec.describe "sms/show", type: :view do
  before(:each) do
    @sm = assign(:sm, Sm.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
