# coding: UTF-8

require_relative './pago.rb'
require_relative './producto.rb'

describe Pago do
  it 'debe tener la paraeta bien montada' do
    1.should == 1
  end

  it 'pago genera albaran si el pago es de un producto físico' do
    mi_producto = Producto.new(fisico: true)
    Pago.new(producto: mi_producto).albaran.should_not be_nil
  end

  it 'pago debe aplicar el upgrade si es un updgrade de membresia' do
    mi_producto = Producto.new(upgrade_membresia: 10)
    mi_otro_producto = Producto.new
    Pago.new(producto: mi_producto).upgrade.should == 10
    Pago.new(producto: mi_otro_producto).upgrade.should be_nil
  end

  it 'Si el pago es del video "Aprende a esquiar", añade un vídeo de primeros auxilios gratis al albaran' do
    mi_producto = Producto.new(tipo: 'video', titulo: 'Aprende a esquiar')
    Pago.new(producto: mi_producto).albaran.productos.collect{ |p| p.titulo }.should include(Producto::VIDEO_FIRST_AID.titulo)
  end

  it 'Si el pago es una membresia, activar la membresia' do
    mi_producto = Producto.new(tipo: 'membresia')
    Membresia.any_instance.should_receive
    Pago.new(producto: mi_producto).usuario.should be_socio
  end

end
