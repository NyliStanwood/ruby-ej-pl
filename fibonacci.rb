def crear_serie(n)
  array = [1,2]
  (n-2).times{ array << array[-1] + array[-2]}
  return array
end

  def array_impares(array)
    arr_impares = Array.new
    array.each do |element|
      if element % 2 != 0
        arr_impares << element
      end
    end
    arr_impares #return
  end

def suma_arr(array)
  suma = 0
  array.each do |element|
    suma+= element
  end
  suma #return
end

serie = crear_serie(40)
impares = array_impares(serie)
puts impares
puts "Suma: #{suma_arr(impares)}"
