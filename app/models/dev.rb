class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.exists?(item_name: item_name)
  end

  def give_away(freebie, dev)
    freebie.update(dev: dev) unless freebie.dev != self
    #from solution, not sure how to do this one??????
  end


end
