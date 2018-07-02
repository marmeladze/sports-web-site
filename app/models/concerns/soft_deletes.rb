module SoftDeletes
  extend ActiveSupport::Concern
  included do
    define_method "remove" do
      update_columns(deleted: true)
    end
  instance_eval("default_scope { where(deleted: false)}")
  end
end
