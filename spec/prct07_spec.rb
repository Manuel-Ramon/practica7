
#Para que vaya a buscar el fichero prct07.rb que contiene a su vez
#los require para el codigo.rb sobre el que hacer pruebas y el versio.rb
require 'lib/prct07'


context ListaDoble do

	#En cada prueba debo crear un objeto de tipo ListaDoble y además inicializa
	#el primer nodo con los datos de una etiqueta nutricional
        before :each do
                @l1 = ListaDoble.new("Galletas",23,11,66,37,10,1)
        end


	#Bloque pruebas 1
	describe "Comprobar valores devolución nodo etiqueta insertada" do
		#Prueba spec metodo añadir nuevo nodo
		it "Valores nuevo nodo" do
			expect(@l1.add("Bolachas",22,33,44,55,66,77)).to eq("*Nobre")
		end
	end

end
