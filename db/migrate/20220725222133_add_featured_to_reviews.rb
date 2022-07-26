class AddFeaturedToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :is_featured, :boolean, default: false
  end
end
