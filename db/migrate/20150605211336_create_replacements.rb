class CreateReplacements < ActiveRecord::Migration
  def change
    create_table :replacements do |t|
      t.string :label
      t.references :template, index: true
      t.references :value, index: true

      t.timestamps
    end
  end
end
