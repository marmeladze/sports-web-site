class Column < Post
  belongs_to :columnist, class_name: 'User', foreign_key: 'user_id'
  default_scope -> { where(user_id: Columnist.ids) }
  delegate :full_name, to: :columnist, prefix: true
end
