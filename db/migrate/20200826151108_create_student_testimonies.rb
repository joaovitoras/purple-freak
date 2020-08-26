class CreateStudentTestimonies < ActiveRecord::Migration[6.0]
  def change
    create_table :student_testimonies do |t|
      t.string :type
      t.string :url
      t.text :text
      t.string :full_name
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
