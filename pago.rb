# coding: UTF-8

class Pago
  require_relative './producto.rb'
  require_relative './albaran.rb'
  attr_accessor :producto, :albaran_del_pago

  def initialize(params={})
    self.producto = params[:producto] if params[:producto]
    self.albaran_del_pago = params[:albaran] || Albaran.new
    self.albaran_del_pago.add_producto(producto)
  end

  def albaran
    if producto.es_fisico?
      albaran_del_pago
    else
      nil
    end
  end

  def upgrade
    producto.upgrade_membresia
  end

end

