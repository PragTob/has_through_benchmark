class CreateIntermediary < ActiveRecord::Migration
  def change
    create_table :intermediaries do |t|
      t.integer :source_id, index: true
      t.timestamps
    end
  end
end
