class Demo < ApplicationRecord
  has_one :sub_demo

  before_create do
    puts "Hey! I will run before you create an object!"
  end


end
