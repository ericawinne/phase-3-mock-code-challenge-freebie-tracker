class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(dev: dev, item_name: item_name, value: value, company: self)
    #used Company.first.give_freebie(benn, "thing", 12) in console to test this.
    #benn = Dev.first (benn is an "instance" of the Dev class)
  end

  def self.oldest_company
    self.minimum(:founding_year)
  end

end