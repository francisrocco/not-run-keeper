class Run < ApplicationRecord
  belongs_to :route
  belongs_to :user

  def distance
    self.route.distance
  end

  def pace
    pace = self.time/self.distance
    minute = (pace).to_s[0]
    second = (((pace).to_s[2..3].to_i * 60)/100)
    "#{minute}:#{second}"
  end

end
