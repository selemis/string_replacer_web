class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :label
      t.text :content

      t.timestamps
    end
  end
end
