class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :label
      t.text :content

      t.timestamps
    end
  end
end
