class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :host, :boolean , default: false
    add_column :users, :scribe, :boolean , default: false
    add_column :users, :admin, :boolean , default: false
    add_column :users, :password_token, :string
  end
end
