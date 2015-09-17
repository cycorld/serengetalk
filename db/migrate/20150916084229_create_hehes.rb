class CreateHehes < ActiveRecord::Migration
  def change
    create_table :hehes do |t|
      t.string  :chat_type
      t.integer :user_id
      t.string  :name
      t.string  :univ
      t.text    :content
       
      t.timestamps null: false
    end
  end
end