class CreateStudentAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :student_attendances do |t|
      t.references :lesson, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
