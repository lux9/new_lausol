class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:dictionary, :create_words, :home, :contacto, :calidad, :institucional, :medio_ambiente, :que_hacemos, :trabaja_con_nosotros]

  def home
  end
  def dictionary
    @words = Dictionary.all
  end
  def create_words
    # alphanum = (33..126).map &:chr
    alphanum = [*?a..?z, *?A..?Z, *?0..?9]
    dictionary = 3.times.flat_map { |l|
      alphanum.repeated_permutation(l + 1).map(&:join)
    }
    dictionary.uniq.each do |word|
      Dictionary.create(word: word)
    end

    redirect_to dictionary_path

  end
end
