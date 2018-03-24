class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_mail
      t.string :user_phone
      t.text :user_address
      t.string :user_profession
      t.string :user_exp
      t.text :user_info
      t.string :user_vk
      t.string :user_inst
      t.string :user_fb
      t.string :user_tvitter
      t.string :user_telegram
      t.string :user_skype

      t.timestamps
    end
  end
end
