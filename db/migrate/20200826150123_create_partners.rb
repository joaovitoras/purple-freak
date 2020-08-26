class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :url
      t.boolean :enabled

      t.timestamps
    end
  end
end
