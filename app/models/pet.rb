class Pet < ApplicationRecord

  has_many :pet_histories

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    self.pet_histories.average(:weight).to_f.round
  end

  def avg_height
    self.pet_histories.average(:heigth).to_f.round
  end

  def max_weight
    # self.pet_histories.max(:weight)
  end

  def max_height
    #TODO-implement
  end

end
