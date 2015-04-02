class OceanSpot < ActiveRecord::Base
  belongs_to :ship, dependent: :destroy
  belongs_to :ocean_grid



  # def to_s
  #   return "#{symbol}"
  # end







end
