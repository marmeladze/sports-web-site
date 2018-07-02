class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string, index: true
    add_column :posts, :featured, :boolean, default: false
    add_column :posts, :published, :boolean, default: true
  end
end
