
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
			expect(@l1.add("Bolachas",22,33,44,55,66,77)).to eq("*Nombre: Bolachas\n*Grasas: 22\n*Grasas saturadas: 33\n*Hidratos: 44\n*Azucares: 55\n*Proeinas: 66\n*Sal: 77")
			#expect(@l1.add("Bolachas",22,33,44,55,66,77)).to eq("*")
		end
	end

	#Bloque pruebas 2
	describe "Recorre nodo izq a drc" do
		it "Valores nodo" do
			expect(@l1.mostrar_val_adelante).to eq("*Nombre: Bolachas\n*Grasas: 22\n*Grasas saturadas: 33\n*Hidratos: 44\n*Azucares: 55\n*Proeinas: 66\n*Sal: 77")
		end
	end

	#Bloque pruebas 3
	describe "Recorre nodo drc a izq" do
		it "Valores nodo 2" do
			expect(@l1.mostrar_val_atras).to eq("*Nombre: Bolachas\n*Grasas: 22\n*Grasas saturadas: 33\n*Hidratos: 44\n*Azucares: 55\n*Proeinas: 66\n*Sal: 77")
		end
	end


end
