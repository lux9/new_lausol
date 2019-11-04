class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end
  def contacto
  end
  def institucional
  end
  def medio_ambiente
  end
  def que_hacemos
  end
  def trabaja_con_nosotros
  end

end
