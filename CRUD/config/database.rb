#DATABASE CONFIGURATION
#
#Log info on file
#ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'w'))
#
#Log in terminal
#ActiveRecord::Base.logger = Logger.new(STDERR)


ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/hat_db.db'
)

ActiveRecord::Schema.define do
  unless ActiveRecord::Base.connection.tables.include? 'hats'
    create_table :hats do |table|
      table.column :brand, :string
      table.column :style, :string
    end
  end
end