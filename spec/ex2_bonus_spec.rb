require 'ex2'

describe GrainsBonus, "Exercicio 2 - Grãos - BÔNUS" do
  context "Runtime comparison" do
    it "square 32" do
      ## Chama ambos para preparar o Sistema Operacional
      # (evitar delay pelo gerenciador de processos do S.O.)
      # e saber se os valores são iguais para ambas versões
      expect(GrainsBonus.square 32).to eq(Grains.square 32)

      ## Calcula o tempo de execução do primeiro
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      Grains.square 32
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_first = ending - starting

      ## Calcula o tempo de execução do bonus
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      GrainsBonus.square 32
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_bonus = ending - starting

      ## Descomente as linhas a baixo para imprimir os tempos de execução 
      #puts "first version runtime for square 32 = #{elapsed_first}"
      #puts "bonus version runtime for square 32 = #{elapsed_bonus}"

      expect(elapsed_bonus).to be < elapsed_first
    end
    it "square 64" do
      ## Chama ambos para preparar o Sistema Operacional
      # (evitar delay pelo gerenciador de processos do S.O.)
      # e saber se os valores são iguais para ambas versões
      expect(GrainsBonus.square 64).to eq(Grains.square 64)

      ## Calcula o tempo de execução do primeiro
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      Grains.square 64
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_first = ending - starting

      ## Calcula o tempo de execução do bonus
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      GrainsBonus.square 64
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_bonus = ending - starting

      ## Descomente as linhas a baixo para imprimir os tempos de execução 
      #puts "first version runtime for square 64 = #{elapsed_first}"
      #puts "bonus version runtime for square 64 = #{elapsed_bonus}"

      expect(elapsed_bonus).to be < elapsed_first
    end
    it "total" do
      ## Chama ambos para preparar o Sistema Operacional
      # (evitar delay pelo gerenciador de processos do S.O.)
      # e saber se os valores são iguais para ambas versões
      expect(GrainsBonus.total).to eq(Grains.total)

      ## Calcula o tempo de execução do primeiro
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      Grains.total
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_first = ending - starting

      ## Calcula o tempo de execução do bonus
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      GrainsBonus.total
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      elapsed_bonus = ending - starting

      ## Descomente as linhas a baixo para imprimir os tempos de execução 
      #puts "first version runtime for total = #{elapsed_first}"
      #puts "bonus version runtime for total = #{elapsed_bonus}"

      expect(elapsed_bonus).to be < elapsed_first
    end
  end
end
