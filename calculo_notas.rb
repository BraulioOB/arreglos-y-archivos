def nota_mas_alta (array)
    return array[1..-1].map{ |n| n.to_i }.max
end

file = File.open("notas.data")
data = file.readlines.map{ |i| i.chomp.split(",")}
file.close

for i in (0...data.length)
    puts nota_mas_alta(data[i])
end
    