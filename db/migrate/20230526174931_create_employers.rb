class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :proper_name
      t.string :function
      t.date :effectuation_date
      t.string :resignation_date
      t.string :date

      t.timestamps
    end
  end
end
