class AddUserIdToWishList < ActiveRecord::Migration[6.1]
  def change
    # add_column :wish_lists, :user_id, :integer
    # add_index :wish_lists, :user_id
    #效果一樣
    
    add_belongs_to :wish_lists, :user
  end
end
