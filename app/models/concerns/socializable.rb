module Socializable
  extend ActiveSupport::Concern
  included do
    default_scope { where(role: name.downcase) }
    ["twitter", "facebook", "instagram", "gplus"].each do |socl|
      define_method socl do
        social[socl].presence
      end
    end
    validates :email, presence: true
  end 
end