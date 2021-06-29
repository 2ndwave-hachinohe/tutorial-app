class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, user: "ユーザー" do |t|
      t.string :user_id, user: "ユーザーID"
      t.string :password_digest, user: "パスワード"
      t.timestamps
    end
  end
end