class Thing < ApplicationRecord
  # @!method some_m
  # @!method say_some_m
  {
    some: "blah",
  }.each do |name, string|
    define_method "#{name}_m" do
      string
    end
    define_method "say_#{name}_m" do
      puts "I am saying: #{string.inspect}"
    end
  end

  def other_m
    "other"
  end
  def say_other_m
    puts "I am saying: 'other'"
  end
end
