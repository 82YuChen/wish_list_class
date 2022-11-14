class AddOnlineToWishList < ActiveRecord::Migration[6.1]
  def change
    add_column :wish_lists, :online, :bolean, default: false
  end
end
