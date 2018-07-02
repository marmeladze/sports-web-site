class Columnist < User
  has_many :columns, class_name: 'Post', foreign_key: 'user_id'
  validates :slug, uniqueness: true
  include Socializable

  def banned?
    false
  end
end