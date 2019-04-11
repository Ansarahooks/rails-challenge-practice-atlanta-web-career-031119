class Company < ApplicationRecord
  has_many :employees
  has_many :offices
  has_many :buildings, through: :offices

  def total_rent
    total=0
    self.buildings.each do |building|
          total += building.rent_per_floor
    end
    total
  end

end
