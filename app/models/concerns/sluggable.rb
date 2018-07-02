module Sluggable
  extend ActiveSupport::Concern
  included do
    after_save :slugify!
    define_method "slugify!" do
      update_columns(slug: title.downcase.gsub('ə', 'e').parameterize) 
    end
    validates :title, presence: true
    validates :slug, uniqueness: true
  end
end