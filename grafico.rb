def chart (array, ajuste = 2)
    max_val = array.map{ |i| i.to_i }.max

    if ajuste < 1
        ajuste = 1
    end

    array.each do |line|
        puts "|" + "*" * (line.to_i * ajuste)
    end
    
    puts ">" + "-" * (max_val * ajuste)
    max_val.times do |i|
        print "#{i + 1} "
    end
    puts
end

graph = [5, 3, 2, 5, 10]
chart(graph)