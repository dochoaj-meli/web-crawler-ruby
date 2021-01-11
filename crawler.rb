require 'wombat'

class Crawler
  def perform(url)
    Wombat.crawl do # De acá se usa la gema Wombat (https://github.com/felipecsl/wombat)
      base_url url # Marca el parametro url como la URL base
      path "/" # Y usa la raíz para navegar

      # Trae todos los links en forma de lista. 
      # Retorna un hashmap con la llave "links" y en el valor un array de los textos de los links.
      links({ xpath: "//a" }, :list) 
    end
  end
end