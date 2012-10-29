require 'ppt'
require 'test/unit'
#Clase de testeo de piedra papel
class TestPiedraPapelTijera < Test::Unit::TestCase

	def setup
		tiradas = [:piedra, :papel, :tijera] #Array de tiradas, que contiene los simbolos
		ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra} #Que gana a que. Hashes. Indice y valor
		resultados= [:gane , :perdi, :empate] #Array de resultados
		@ppt_obj = PiedraPapelTijeras.new(tiradas, ganadoras, resultados, "tijeras", "papel", "gane") #Se crea una variable instancia
	end


	def test_play
		@ppt_obj.obtener_humano("piedra")#Se llama a la funcion obtener_humano pasandole el valor"piedra"
		score = [] #Se crea un array vacio
		30.times do score.push @ppt_obj.jugar end  #Se repite 30 veces y se va poniendo en score lo guardado en lo que devuelve la instancia de ppt_obj despues de llamar a la funcion jugar
		assert(score.uniq.length >=3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}")#Afirma
	end


	def test_wrong_play
		assert_raise(TypeError) {@ppt_obj.obtener_humano('fuego')} #Recibe un error
	end

	def test_variety
		@ppt_obj.obtener_humano(@ppt_obj.tiradas.sample.to_s) #Se llama a la funcion obtener humano, y dentro le pasaremos lo que devuelva la funcion tirada y sample despues de haber convertido esta en un string
		answer = [] #Se crea un array vacio
		20.times do answer.push @ppt_obj.jugar end #Repite 20 veces meter lo que devuelva jugar en answer
		assert(answer.uniq.lenght >= 3, "answers.uniq.length = #{answer.uniq.length} answer.length = #{answer.length}")#Afirma
	end

end
