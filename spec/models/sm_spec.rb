require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Sm, type: :model do
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:mobile) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:timestamp) }
  it { should validate_presence_of(:digest) }
end
