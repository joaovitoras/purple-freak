class ChangeTypeToKind < ActiveRecord::Migration[6.0]
  def change
    rename_column :student_testimonies, :type, :kind
  end
end
