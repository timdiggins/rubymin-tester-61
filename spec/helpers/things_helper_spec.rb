require 'rails_helper'

RSpec.describe ExampleHelper, type: :helper do
  include ExampleHelper # NB this line should not be needed, but same result either way

  it "infers" do
    other
  end
end
