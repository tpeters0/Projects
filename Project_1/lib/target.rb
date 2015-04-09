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
    # im unsure what what escapes are doing, could you tell me when you get a chance? I've never seen that before.
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
