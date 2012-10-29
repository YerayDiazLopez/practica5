require 'ppt' #Lee un vez el fichero especificado

tiradas = [:piedra, :papel, :tijeras]#Array
ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra}#hash
resultados = [:gane , :perdi, :empate]#Array
humano = ARGV.shift || ''#coge de linea de comandos 
ppt_obj = PiedraPapelTijeras.new(tiradas, ganadoras, resultados, humano, "papel", "gane")

resultado = ppt_obj.jugar
maquina = ppt_obj.maquina

if resultado == :gane #Si el resultado es igual al simbolo gane
 	puts "El humano ha jugado #{humano} y la maquina #{maquina}, gana la maquina"
elsif resultado == :perdi #Si el resultado es igual al simbolo perdi
	puts "El humano ha jugado #{humano} y la maquina #{maquina}, gana el humano"
else
	puts "Empate"
end
