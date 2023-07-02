class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :grade

      t.timestamps
    end

    def full_name
      "#{self.first_name}" + " " + "#{self.last_name}"
    end
  end
end
