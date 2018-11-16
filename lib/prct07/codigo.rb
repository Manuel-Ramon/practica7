#La clase siguiente es de semana anterior las dos finales son de esta semana

#Nuestra clase 
class Etiqueta
	attr_reader
	#Constructor
	def initialize (nom,gras,sat,hid,azu,prot,s)
		@nombre = nom
		@grasas = gras
		@saturadas = sat
		@hidratos = hid
		@azucares = azu
		@proteinas = prot
		@sal = s 
		@porciones = 0
	end
		
	#Devuelve el contenido del atributo nombre
	def noun
		#puts "#{@nombre}"
		@nombre
	end

	#Devuelve el contenido en grasas del producto
	def fat
		@grasas
	end

	#Devuelve el contenido de grasas saturadas producto
	def sat_fat
		@saturadas
	end

	#Dev hidratos
	def hidrates
		@hidratos
	end

	#Dev azucares
	def sugars
		@azucares
	end

	#Dev proteinas
	def proteins
		@proteinas
	end

	#Devolver sal
	def salt
		@sal
	end

	#Calc kilojulios
	def kj
		@kilojulios = (@hidratos * 17) + (@proteinas * 17) + (@grasas * 37) + (@sal * 25)
	end

	#Cal kilocalorias
	def kcal
		@kilocalorias = (@hidratos * 4) + (@proteinas * 4) + (@grasas * 9) + (@sal * 6)
	end

	#IR grasa
	def irgrasa
		@irfat = (@grasas * 100) / 70
	end

	#IR saturadas
	def irsaturada
		@irfat = (@saturadas * 100) / 20
	end

	#IR hidratos
	def irhidrato
		@irhidrato = (@hidratos * 100) / 260
	end

	#IR azucares
	def irazucar
		@irazucar = (@azucares * 100) / 90
	end

	#IR proteinas
	def irproteina
		@irproteina = (@proteinas * 100) / 50
	end

	#IR sal
	def irsal
		@irsal = (@sal * 100) / 6
	end

	def cambiar_porciones (porciones)
		@porciones = porciones
	end
end

#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------


#Voy a intentar crear una clase que contenga ¿como atributo? una estructura
#que nos va a servir como nodo para crear la lista doblemente enlazada (creo)
class Nodo

	#¿Definir la estructura del Struct?
	N = Struct.new(:valor,:sig,:prev)

	#Usamos el 'initialize' para crear un NodoStruct y pasarle valores
	#def initialize (val)
	def initialize (u1,u2,u3,u4,u5,u6,u7)
		#@node = N.new(val,nil,nil)
		@node = N.new(val=Etiqueta.new(u1,u2,u3,u4,u5,u6,u7),nil,nil)

		#Esto cuasi me veo obligado ha implementarlo porque necesito
		#Saber cuantos nodos creo para recorrer la lista
		if defined?(@@numero_nodos)
			@@numero_nodos += 1
		else
			@@numero_nodos = 1
		end
	end

#--------------------------------------------------------------------------------

	#Esto sirve más o menos para decirle que su nodo siguiente es el
	#objeto que se le pasa por argumento (usar un Nodo ya creado)
	def asigna_siguiente(sigue)
		@node.sig = sigue
	end

	#Y esto creo que sirve para asignar cual es el nodo anterior del actual
	#teniendo en cuenta que debemos pasar dicho nodo anterior como argumento
	def asigna_anterior(ante)
		@node.prev = ante
	end

#--------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

	#Este método sirve para obtener el valor del nodo siguiente al que apunta
	#el actual
	def valord
		aux = @node.sig
		aux.devuelve_valor
	end

	#
	def sig_sig
		aux3 = @node.sig
		aux3.devuelve_sig
	end

	#
	def sig_ant
		aux4 = @node.sig
		aux4.devuelve_ant
	end

#--------------------------------------------------------------------------------

	#Para obtener el valor del nodo anterior al actual
	def valora
		aux2 = @node.prev
		aux2.devuelve_valor
	end

	def ant_sig
		aux5 = @node.prev
		aux5.devuelve_sig
	end

	def ant_ant
		aux6 = @node.prev
		aux6.devuelve_ant
	end
#-------------------------------------------------------------------------------
#--------------------------------------------------------------------------------

	#Este método devuelve el campo 'valor' de la estructura N
	def devuelve_valor
		datos_etiq = @node.valor

		puts "*Nombre:  #{ datos_etiq.noun}"
		puts "*Grasas: #{datos_etiq.fat}"
		puts "*Grasas saturadas: #{datos_etiq.sat_fat}"
		puts "*Hidratos: #{datos_etiq.hidrates}"
		puts "*Azucares: #{datos_etiq.sugars}"
		puts "*Proeinas: #{datos_etiq.proteins}"	
		puts "*Sal: #{datos_etiq.salt}"
	end

	#Método que devuelve el campo 'sig' de la estructura N
	def devuelve_sig
		@node.sig
	end

	#Devuelve el campo 'prev' de la estructura N
	def devuelve_ant
		@node.prev
	end

#--------------------------------------------------------------------------------

	def devuelve_var_instancia
		@@numero_nodos
	end

end

#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------

#Ahora voy a crear una clase ListaDoble que usará la clase Nodo para supuestamente
#crear una lista doblemente enlazada
class ListaDoble


        def initialize(v1,v2,v3,v4,v5,v6,v7)


                #Voy a intentar que se puedan crear n nodos de forma dinámica
                #usando esto
                if defined?(@@numero)

                else
                        @@numero = 1

                        @nod1 = Nodo.new(v1,v2,v3,v4,v5,v6,v7)

                        @nodo_aux = @nod1
                end

        end

	#Esto supuestamente nos sirve para añadir nuevos nodos a la lista
        #El problema que tenemos es que necesitamos una variable de clase
        #(las variables con @@) en el que cada vez que creamos un nodo debe
        #incrementarse así podremos saber si hay 0 o más nodoos y conectarlos
        #NOTA: Como no sé como crear dinámicamente n nodos sólo se me ocurre
        #crearlos aquí estáticamente. Crearé 5
        #NOTA2: También podría haberlo hecho en el 'initialize'
        #def add (v1,v2,v3,v4,v5)
        def add (v1,v2,v3,v4,v5,v6,v7)

		@@numero += 1

                #Primero creamos el nuevo nodo
                n = Nodo.new(v1,v2,v3,v4,v5,v6,v7)

                #Siguiente el @nodo_aux que es el ultimo nodo creado
                #conecta con este nodo recién creado como su sucesor
                @nodo_aux.asigna_siguiente(n)

                #Y el nodo nuevo conecta con su predecesor @nodo_aux
                n.asigna_anterior(@nodo_aux)

                #Una vez conectados @nodo_aux le decimos que ahora
                #será este último nodo creado
                @nodo_aux = n

		#Mostramos el contenido por pantalla. Esto es para la prueba spec
                puts "#{@nodo_aux.devuelve_valor}"

        end

	#Con este método debería recorrer la lista doblemente enlazada
        #mostrando los valores desde el primer nodo al último
        def mostrar_val_adelante

                i = 0

                #t =  @nod1.devuelve_var_instancia
		t = @@numero

                nudo = @nod1
                nudo_aux = nudo

                #puts nudo.devuelve_valor

                while i < t

                        puts nudo.devuelve_valor

                        nudo_aux = nudo.devuelve_sig

                        nudo = nudo_aux

                        i = i + 1

                end
        end

	#Con este método debería recorrer la lista doblemente enlazada
        #mostrando los valores desde el último  nodo al primero
	#.....
        def mostrar_val_atras

                i = 0

                #t =  @nod1.devuelve_var_instancia
		t = @@numero

                #nudo = @nod5
                nudo = @nodo_aux
                nudo_aux = nudo

                #puts nudo.devuelve_valor

                while i < t

                        puts nudo.devuelve_valor

                        nudo_aux = nudo.devuelve_ant

                        nudo = nudo_aux

                        i = i + 1

                end
        end

end

#-------------------------------------------------------------------------------

