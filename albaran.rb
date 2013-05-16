# coding: UTF-8

class Albaran
  attr_accessor :lista_productos

  def initialize
    self.lista_productos = []
  end

  def add_producto(nuevo)
    self.lista_productos << nuevo
    self.lista_productos << Producto::VIDEO_FIRST_AID if nuevo.titulo == 'Aprende a esquiar'
  end

  def productos
    lista_productos
  end
end

