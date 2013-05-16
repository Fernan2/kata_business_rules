# coding: UTF-8

class Usuario
  attr_accessor :socio

  def initialize(params={})
    self.socio == false
  end

  def es_socio?
    socio
  end

  def hazme_socio!
    socio == true
  end

  def ya_no_soy_socio!
    socio == false
  end
end