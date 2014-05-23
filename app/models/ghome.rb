class Ghome < ActiveRecord::Base
  validates :place, presence: true, length:{ maximum: 50 }
  validates :shubetu, presence: true, length:{ maximum: 30 }

end
