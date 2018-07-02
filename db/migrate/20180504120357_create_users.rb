class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :slug, unique: true
      t.string :email, unique: true
      t.string :password_digest
      t.jsonb  :social
      t.string :role

      t.timestamps null: false
    end
  end
end
