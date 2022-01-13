# Declarando a classe App que é onde as pages serão instanciadas
class App
    def home
      Home.new
    end

    def carrers
      Carrers.new
    end
end