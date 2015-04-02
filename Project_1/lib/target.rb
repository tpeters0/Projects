class TARGET < ActiveRecord::Base
  belongs_to :ship

 def to_s
    return "#{show_char}"
 end

end
