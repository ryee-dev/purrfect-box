require 'rails_helper'

describe Box do
  it { should validate_presence_of :name }
  it { should validate_presence_of :size }
  it { should validate_presence_of :color }
  it { should validate_presence_of :price }
end