module ThingsHelper
  # @!method some_h
  # @!method say_some_h
  {
    some: "blah",
  }.each do |name, string|
    define_method "#{name}_h" do
      string
    end
    define_method "say_#{name}_h" do
      puts "I am saying: #{string.inspect}"
    end
  end

  def other_h
    "other"
  end
  def say_other_h
    puts "I am saying: 'other'"
  end
end
