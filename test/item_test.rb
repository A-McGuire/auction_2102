require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/attendee'

class ItemTest < MiniTest::Test

 def test_it_exists_with_attributes
  
    item1 = Item.new('Chalkware Piggy Bank')
    
    assert_instance_of Item, item1
    assert_equal "Chalkware Piggy Bank", item1.name
    assert_equal({}, item1.bids)
  end

  # def test_add_bid
    # attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    # attendee2 = Attendee.new(name: 'Bob', budget: '$75')
    # attendee3 = Attendee.new(name: 'Mike', budget: '$100')
  #   item1 = Item.new('Chalkware Piggy Bank')
  #   item2 = Item.new('Bamboo Picture Frame')
  #   item3 = Item.new('Homemade Chocolate Chip Cookies')
  #   item4 = Item.new('2 Days Dogsitting')
  #   item5 = Item.new('Forever Stamps')

  #   auction.add_item(item1)
  #   auction.add_item(item2)
  #   auction.add_item(item3)
  #   auction.add_item(item4)
  #   auction.add_item(item5)
    
  #   item1.add_bid(attendee2, 20)
  #   item1.add_bid(attendee1, 22)
    
  #   expected = {
  #       attendee2 => 20,
  #       attendee1 => 22
  #     }
  #   assert_equal expected, item1.bids
  # end
end
