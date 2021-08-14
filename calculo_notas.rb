def nota_mas_alta (array)
    return array[1..-1].map{ |n| n.to_f.round(2) }.max
end

file = File.open("notas.data")
data = file.readlines.map{ |i| i.chomp.split(",")}
file.close

puts nota_mas_alta(data[0])