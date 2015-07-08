class User < ActiveRecord::Base
  
  serialize :example, Array
  
end
