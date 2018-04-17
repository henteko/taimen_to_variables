require 'csv'
require 'erb'

csv_data = CSV.read('taimen_serial.csv', headers: true)

data = []
tmp_data = []
counter = 1
counter2 = 1
csv_data.each do |csv|
  tmp_data.push({id: counter2, password: csv['password']})
  if csv['number'].to_i % 10 == 0
    data.push({id: counter, items: tmp_data})
    tmp_data = []
    counter += 1
    counter2 = 0
  end
  counter2 += 1
end

erb = ERB.new(File.read('valiables.xml.erb'))
File.open("valiables.xml", "w") do |f| 
  f.puts(erb.result(binding))
end

