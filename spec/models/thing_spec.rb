require 'rails_helper'

RSpec.describe Thing, type: :model do
  class SomeNewClass
    include ThingsHelper
  end
  it "finds stuff" do
  end
end
