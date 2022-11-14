class CreateWishLists < ActiveRecord::Migration[6.1]
  def change
    create_table :wish_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
      #自動生成以下兩者時間戳記
      #created_at
      #updated_at
    end
  end
end
