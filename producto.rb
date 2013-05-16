# coding: UTF-8

class Producto
  attr_accessor :fisico, :upgrade_membresia_del_producto, :campo_titulo

  VIDEO_FIRST_AID = Producto.new(tipo: 'video', titulo: 'Primeros auxilios gratis')

  def initialize(params={})
    self.fisico = params[:fisico] || params[:tipo] == 'video'
    self.upgrade_membresia_del_producto = params[:upgrade_membresia]
    self.campo_titulo = params[:titulo]
  end

  def es_fisico?
    fisico
  end

  def upgrade_membresia
    upgrade_membresia_del_producto
  end

  def titulo
    campo_titulo
  end

end

