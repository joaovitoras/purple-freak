class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :full_name
      t.datetime :signed_at
      t.string :email
      t.string :profession

      t.timestamps
    end
  end
end
