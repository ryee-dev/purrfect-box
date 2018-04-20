require 'rails_helper'

describe Review do
  it { should validate_presence_of :box_id }
  it { should validate_presence_of :name }
  it { should validate_presence_of :review }
  it { should validate_presence_of :rating }
end