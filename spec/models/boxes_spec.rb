require 'rails_helper'

describe Box do
  it { should validate_presence_of :name }
end