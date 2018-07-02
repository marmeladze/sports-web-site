class Article < Post
  belongs_to :category
  belongs_to :editor, class_name: 'User', foreign_key: 'user_id'
  validates :category, presence: true
  default_scope -> { where(user_id: Editor.ids) }
  scope :with_category, -> { joins(:category) }
  delegate :title, to: :category, prefix: true
end
