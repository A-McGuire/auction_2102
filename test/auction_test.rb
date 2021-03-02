require 'minitest/autorun'
require 'minitest/pride'
require './lib/attendee'
require './lib/auction'

class AuctionTest < MiniTest::Test

 def test_it_exists_with_attributes
    auction = Auction.new
    
    assert_instance_of Auction, auction
    
    assert_equal [], auction.items
  end
  
  def test_add_item
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    # attendee = Attendee.new(name: 'Megan', budget: '$50')
    
    auction.add_item(item1)
    auction.add_item(item2)
    
    auction.items
    assert_equal [item1, item2]
    
    assert_equal ["Chalkware Piggy Bank", "Bamboo Picture Frame"], auction.item_names
  end
end

