require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < MiniTest::Test

 def test_it_exists_with_attributes
  
    item1 = Item.new('Chalkware Piggy Bank')
    
    assert_instance_of Item, item1
    assert_equal "Chalkware Piggy Bank", item1.name
    assert_equal({}, item1.bids)
  end
end
