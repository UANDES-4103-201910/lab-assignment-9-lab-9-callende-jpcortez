class CreateUserTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tickets do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.datetime :time
      t.boolean :paid

      t.timestamps
    end
  end
end
