require 'rails_helper'

RSpec.describe Fighter, type: :model do
  it { should belong_to :user }
end
