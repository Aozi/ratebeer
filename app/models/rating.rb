
class Rating < ActiveRecord::Base
  belongs_to :beer

  def to_s
    ((Beer.find_by id: self.beer_id).name.to_s + " #{self.score}")
  end
end