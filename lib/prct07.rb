require "prct07/version"
require "prct07/codigo" #Este fichero como vemos no tiene ningún código por si mismo sino que cuando el rake reciba la tarea de hacer un spec irá aquí donde se le dirá donde están los ficheros sobre los que hacer las pruebas. codigo.rb es donde estará el código de las listas enlazadas de la práctica

module Prct07
  class Error < StandardError; end
  # Your code goes here...
end
