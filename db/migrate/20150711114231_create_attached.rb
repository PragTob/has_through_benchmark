class CreateAttached < ActiveRecord::Migration
  def change
    create_table :attacheds do |t|
      t.integer :intermediary_id, index: true
      t.timestamps
    end
  end
end
