class Editor < User
  include Socializable
  has_many :articles, class_name: 'Post', foreign_key: 'user_id'
  has_secure_password
  def banned?
    false
  end
end