class PiedraPapelTijeras
	attr_accessor :tiradas, :ganadoras, :resultados #Crea ambos getter y setter es decir
	attr_reader :humano, :maquina, :resultado #Crea solo getter, Solo podran ser leidos

	def initialize (tiradas, ganadoras, resultados, humano, maquina, resultado)#Metodo inicializar
		@tiradas = tiradas #Guarda en la variable instancia lo que contenga tiradas
		@ganadoras = ganadoras #Guarda en la variable instancia lo que contenga ganadoras
		@humano = humano.to_sym #Convierte un string a simbolo
		@maquina = maquina.to_sym #Convierte un string a simbolo
		@resultados = resultados #Guarda en la variable instancia lo que contenga resultados
		@resultado = resultado.to_sym #Convierte un string a simbolo
	end

	def obtener_humano(cadena)
		@humano = cadena.to_sym #Convierte el string a simbolo
		raise TypeError unless @tiradas.include?(@humano) #Lanza una excepcion de typerror sino esta incluido en tiradas la variable instancia human
	end

	def obtener_maquina
		@maquina =@tiradas.sample
	end

	def jugar
		obtener_maquina
		if @humano == @maquina #Si lo que contiene es igual
			@resultado = resultados[2] #Entonces el resultado es igual a empate que sería el simbolo de resultados2
		elsif 
			@humano == @ganadoras[@maquina] #Si se da esto
			@resultado = resultados[0] #El resultado es que ganastes
		else
			@resultado = resultados[1] #El resultado es que perdistes
		end
	end
end
