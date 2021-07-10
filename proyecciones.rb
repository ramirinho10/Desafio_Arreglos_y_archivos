data = File.open('ventas_base.db').read.split(",")

data.map! {|x| x.to_f}

def aumentar(arr, aumento, desde, hasta)
    arreglo_filtrado = arr[desde..hasta]
    arreglo_filtrado.map! {|venta_mensual| venta_mensual * aumento}.sum
end

output = File.open('resultados.data', 'w')
output.write(aumentar(data,1.1,0,5))
output.write("\n")
output.write(aumentar(data,1.2,6,11))
output.write("\n")
output.close