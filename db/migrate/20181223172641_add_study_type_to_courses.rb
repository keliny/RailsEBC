class AddStudyTypeToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :study_type, :string
    add_column :courses, :language_type, :string
  end
end
