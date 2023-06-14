class Auction 

  attr_reader :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item 
  end

  def item_names
    names = []
    @items.each do |item|
      names << item.name
    end
    names 
  end

  def unpopular_items
    @items.select do |item|
      if item.bids.empty?
      item
      end
    end
  end

  # def popular_items
  #   @items.select do |item|
  #     if item.bids.empty? == false 
  #       item
  #     end
  #   end
  # end

  def potential_revenue
    rev = []
    @items.each do |item|
      if item.bids.values.max != nil
        rev << item.bids.values.max
      end
    end
    rev.sum 
  end

  def bidder_info

  end

  def bidders

  end
end