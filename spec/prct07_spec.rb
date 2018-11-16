
#Para que vaya a buscar el fichero prct07.rb que contiene a su vez
#los require para el codigo.rb sobre el que hacer pruebas y el versio.rb
require 'lib/prct07'


context ListaDoble do

	#En cada prueba debo crear un objeto de tipo ListaDoble y además inicializa
	#el primer nodo con los datos de una etiqueta nutricional
        before :each do
                @l1 = ListaDoble.new("Galletas",23,11,66,37,10,1)
        end


end
