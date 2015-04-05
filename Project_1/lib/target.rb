class Target < ActiveRecord::Base
  belongs_to :ship
  belongs_to :ocean_grid
  validates :row_num, :presence => true
  validates :col_num, :numericality => true
  # validates :

  # def hit
  #   selfupdate(called: true)
  # end

  def to_s
    if called == false
      return "\e[44m ~ \e[0m|"
    else
      if hit == true
        return "\e[41m X \e[0m|"
      else
        return "\e[36m O \e[0m|"
      end
    end
  end
end
