# Ejectuar esto asi: stock_stats.rb data.csv

require_relative 'csv_reader.rb'

reader = CsvReader.new
ARGV[0] = 'data.csv' #parche pa ejecutar sin consola 
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"

