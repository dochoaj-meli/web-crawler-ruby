require_relative 'crawler'

# Paralelo a la clase Main de Java, podría no estar.
class Main
  # Self lo que hace es crear un método estático que no precisa una instancia de objeto para ejecutarse. 
  def self.perform
    # Instancio un crawler
    c = Crawler.new
    # puts escribe por consola
    # c.perform es el método del crawler
    puts c.perform('https://codigofacilito.com/')
  end
end

# Llama al método estático perform de main, que permite que el script corra.
Main.perform