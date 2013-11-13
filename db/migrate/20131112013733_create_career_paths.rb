class CreateCareerPaths < ActiveRecord::Migration
  def change
    create_table :career_paths do |t|
      t.string :job_title
      t.string :salary_range
      t.string :description
      t.string :day_in_the_life

      t.timestamps
    end
  end
end
