require 'rails_helper'

RSpec.describe TestModel, type: :model do
  it "teste" do
    test_model = create :test_model
    expect(test_model.func1).to eq("aaa")
  end
end
