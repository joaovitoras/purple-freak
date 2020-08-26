class CreateFamousTestimonies < ActiveRecord::Migration[6.0]
  def change
    create_table :famous_testimonies do |t|
      t.string :url
      t.string :full_name
      t.boolean :enabled

      t.timestamps
    end
  end
end
