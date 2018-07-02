class User < ActiveRecord::Base
  include SoftDeletes
  validates :role, presence: true 
end
