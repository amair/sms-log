class CreateSms < ActiveRecord::Migration[5.0]
  def change
    create_table :sms do |t|
      t.string :mobile
      t.string :content
      t.string :username
      t.string :timestamp
      t.string :digest

      t.timestamps
    end
  end
end
