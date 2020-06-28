class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:dictionary, :create_words, :home, :contacto, :calidad, :institucional, :medio_ambiente, :que_hacemos, :trabaja_con_nosotros]

  def home
  end
  def dictionary
    @words = Dictionary.all
  end
  def create_words
    redirect_to dictionary_path

  end
end
