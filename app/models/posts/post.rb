class Post < ActiveRecord::Base
  include Sluggable
  include SoftDeletes
  belongs_to :category
  belongs_to :user
end
