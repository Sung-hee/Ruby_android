class AddModelToModel < ActiveRecord::Migration
  def change
    add_column :models, :user_id, :string
    add_column :models, :nickname, :string
    add_column :models, :nick_pass, :string
    add_column :models, :phone, :string
  end
end
