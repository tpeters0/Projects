class Target < ActiveRecord::Base
  belongs_to :ship
  belongs_to :ocean_grid

  def to_s
    if called == false
      return " ~ |"
    else
      if hit == true
        return " X |"
      else
        return " O |"
      end
    end
  end
end
