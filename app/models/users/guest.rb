class Guest < User
  include Socializable
  
  scope :not_banned, -> { where(banned: false) }

  def ban!
    update_columns(banned: true)
  end
end