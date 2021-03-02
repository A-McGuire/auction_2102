class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    items << item
  end

  def item_names
    items.map do |item|
      item.name
    end
  end

  def unpopular_items
    items.find_all do |item|
      item.bids.size < 1
    end
  end

  def has_a_bid
    items.find_all do |item|
      item.bids.size > 0
    end
  end

  def potential_revenue
    has_a_bid.sum do |item|
      item.current_high_bid
    end
  end

  def bidders
    bidders = has_a_bid.flat_map do |item|
      item.bids.keys
    end
    bidders.map do |bidder|
       bidder.name
    end.uniq
  end

  # def bidder_info
    
  #   test = has_a_bid.each do |item|
  #     info = item.bids.group_by do |attendee|
  #       attendee[0]
  #     end
  #   end
  #   require 'pry'; binding.pry
  # end
end