file = File.open("ventas_base.db")
data = file.readlines.map(&:chomp)[0].split(",")
data = data.map {|x| x.to_i}
file.close

first_sem = data[0...6].sum() * 1.1
second_sem = data[6...data.length].sum() * 1.2

File.write("resultados.data", "#{first_sem.round(2)} \n#{second_sem.round(2)}\n")