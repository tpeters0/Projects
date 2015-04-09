class Ship < ActiveRecord::Base
  has_many :targets

 def to_s
    return "#{id}"
 end

end

# looks good, a little unneccessary white space here.
