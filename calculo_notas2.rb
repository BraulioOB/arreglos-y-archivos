def nota_mas_alta (array)
    array = array[1..-1].map{ |n| n.to_f.round(2) } 
    higher = array.max

    return array.select{ |n| n == higher}
end

file = File.open("notas.data")
data = file.readlines.map{ |i| i.chomp.split(",")}
file.close

print nota_mas_alta(data[0])