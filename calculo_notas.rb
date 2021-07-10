data = File.open("notas.data").readlines
data.map!{ |line| line.split(",")}


def nota_mas_alta(array)

    [array[0], array.map{ |x| x.to_i}.max]

end


print nota_mas_alta(data[3])