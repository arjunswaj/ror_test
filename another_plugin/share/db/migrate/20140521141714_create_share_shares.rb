class CreateShareShares < ActiveRecord::Migration
  def change
    create_table :share_shares do |t|
      t.string :url
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
