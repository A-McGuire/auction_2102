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

  def potential_revenue
    has_bid = items.find_all do |item|
      item.bids.size > 0
    end
    has_bid.sum do |item|
      item.current_high_bid
    end
  end
end