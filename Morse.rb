class CodigoMorse
    attr_accessor :mensagem, :count, :arrayMsg
  
    def initialize(mensagem)
      @arrayMsg = (mensagem.gsub("—", "-") + " ").split('')
      @count = 0
      @mensagem = ''
    end
    
  
    def iniciar
      q0
    end
  
    def q0
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "."
        @count += 1
        q1
      when "-"
        @count += 1
        q0_1
      when "/"   # Se encontrar '/', adiciona espaço 
        @mensagem << " " unless @mensagem.end_with?(" ")
        @count += 1
        q0
      when " "   # Ignora espaços que separam os sinais dentro de uma mesma letra
        @count += 1
        q0
      else
        @count += 1
        q0
      end
    end
    
  
    def q1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "e"
        @count += 1
        q0
      when "/"
        @mensagem << "e "
        @count += 1
        q0
      when "."
        @count += 1
        q2
      when "-"
        @count += 1
        q6
      else
        @mensagem << "e"
        exibir
      end
    end
  
    def q2
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "i"
        @count += 1
        q0
      when "/"
        @mensagem << "i "
        @count += 1
        q0
      when "."
        @count += 1
        q3
      when "-"
        @count += 1
        q2_1
      else
        @mensagem << "i"
        exibir
      end
    end
  
    def q2_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "u"
        @count += 1
        q0
      when "/"
        @mensagem << "u "
        @count += 1
        q0
      when "."
        @count += 1
        q2_2
      when "-"
        @count += 1
        q2_3
      else
        @mensagem << "u"
        exibir
      end
    end
  
    def q2_2
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "f"
        @count += 1
        q0
      when "/"
        @mensagem << "f "
        @count += 1
        q0
      else
        @mensagem << "f"
        exibir
      end
    end
  
    def q2_3
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "-"
        @count += 1
        q2_4
      when "."
        @count += 1
        q2_5
      else
        exibir
      end
    end
  
    def q2_4
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "2"
        @count += 1
        q0
      when "/"
        @mensagem << "2 "
        @count += 1
        q0
      else
        @mensagem << "f"
        exibir
      end
    end
  
    def q2_5
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "."
        @count += 1
        q2_6
      else
        exibir
      end
    end
  
    def q2_6
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "?"
        @count += 1
        q0
      when "/"
        @mensagem << "? "
        @count += 1
        q0
      else
        @mensagem << "?"
        exibir
      end
    end
  
    def q3
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "s"
        @count += 1
        q0
      when "/"
        @mensagem << "s "
        @count += 1
        q0
      when "."
        @count += 1
        q4
      when "-"
        @count += 1
        q3_1
      else
        @mensagem << "s"
        exibir
      end
    end
  
    def q3_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "v"
        @count += 1
        q0
      when "/"
        @mensagem << "v "
        @count += 1
        q0
      when "-"
        @count += 1
        q3_2
      else
        @mensagem << "v"
        exibir
      end
    end
  
    def q3_2
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "3"
        @count += 1
        q0
      when "/"
        @mensagem << "3 "
        @count += 1
        q0
      else
        @mensagem << "3"
        exibir
      end
    end
  
    def q4
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "h"
        @count += 1
        q0
      when "/"
        @mensagem << "h "
        @count += 1
        q0
      when "."
        @count += 1
        q5
      when "-"
        @count += 1
        q4_1
      else
        @mensagem << "h"
        exibir
      end
    end
  
    def q4_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "4"
        @count += 1
        q0
      when "/"
        @mensagem << "4 "
        @count += 1
        q0
      else
        @mensagem << "4"
        exibir
      end
    end
  
    def q5
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "5"
        @count += 1
        q0
      when "/"
        @mensagem << "5 "
        @count += 1
        q0
      else
        @mensagem << "5"
        exibir
      end
    end
  
    def q0_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "t"
        @count += 1
        q0
      when "/"
        @mensagem << "t "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_2
      when "."
        @count += 1
        q0_7
      else
        @mensagem << "t"
        exibir
      end
    end
  
    def q0_2
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "m"
        @count += 1
        q0
      when "/"
        @mensagem << "m "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_3
      when "."
        @count += 1
        q0_14
      else
        @mensagem << "m"
        exibir
      end
    end
  
    def q0_3
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "o"
        @count += 1
        q0
      when "/"
        @mensagem << "o "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_4
      when "."
        @count += 1
        q0_19
      else
        @mensagem << "o"
        exibir
      end
    end
  
    def q0_4
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "."
        @count += 1
        q0_5
      when "-"
        @count += 1
        q0_6
      else
        exibir
      end
    end
  
    def q0_5
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "9"
        @count += 1
        q0
      when "/"
        @mensagem << "9 "
        @count += 1
        q0
      else
        @mensagem << "9"
        exibir
      end
    end
  
    def q0_6
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "0"
        @count += 1
        q0
      when "/"
        @mensagem << "0 "
        @count += 1
        q0
      else
        @mensagem << "0"
        exibir
      end
    end
  
    def q0_7
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "n"
        @count += 1
        q0
      when "/"
        @mensagem << "n "
        @count += 1
        q0
      when "."
        @count += 1
        q0_8
      when "-"
        @count += 1
        q0_11
      else
        @mensagem << "n"
        exibir
      end
    end
  
    def q0_8
      if @count >= @arrayMsg.size
        @mensagem << "d"
        return exibir
      end
      case @arrayMsg[@count]
      when " "
        @mensagem << "d"
        @count += 1
        q0
      when "/"
        @mensagem << "d "
        @count += 1
        q0
      when "."
        @count += 1
        q0_9
      when "-"
        @count += 1
        q0_18
      else
        @mensagem << "d"
        exibir
      end
    end
  
    def q0_18
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "x"
        @count += 1
        q0
      when "/"
        @mensagem << "x "
        @count += 1
        q0
      else
        @mensagem << "x"
        exibir
      end
    end
  
    def q0_9
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "b"
        @count += 1
        q0
      when "/"
        @mensagem << "b "
        @count += 1
        q0
      when "."
        @count += 1
        q0_10
      else
        @mensagem << "b"
        exibir
      end
    end
  
    def q0_10
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "6"
        @count += 1
        q0
      when "/"
        @mensagem << "6 "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_21
      else
        @mensagem << "6"
        exibir
      end
    end
  
    def q0_11
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "k"
        @count += 1
        q0
      when "/"
        @mensagem << "k "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_12
      when "."
        @count += 1
        q0_13
      else
        @mensagem << "k"
        exibir
      end
    end
  
    def q0_12
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "y"
        @count += 1
        q0
      when "/"
        @mensagem << "y "
        @count += 1
        q0
      else
        @mensagem << "y"
        exibir
      end
    end
  
    def q0_13
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "c"
        @count += 1
        q0
      when "/"
        @mensagem << "c "
        @count += 1
        q0
      else
        @mensagem << "c"
        exibir
      end
    end
  
    def q0_14
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "g"
        @count += 1
        q0
      when "/"
        @mensagem << "g "
        @count += 1
        q0
      when "-"
        @count += 1
        q0_15
      when "."
        @count += 1
        q0_16
      else
        @mensagem << "g"
        exibir
      end
    end
  
    def q0_15
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "q"
        @count += 1
        q0
      when "/"
        @mensagem << "q "
        @count += 1
        q0
      else
        @mensagem << "q"
        exibir
      end
    end
  
    def q0_16
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "z"
        @count += 1
        q0
      when "/"
        @mensagem << "z "
        @count += 1
        q0
      when "."
        @count += 1
        q0_17
      when "-"
        @count += 1
        q0_22
      else
        @mensagem << "z"
        exibir
      end
    end
  
    def q0_17
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "7"
        @count += 1
        q0
      when "/"
        @mensagem << "7 "
        @count += 1
        q0
      else
        @mensagem << "7"
        exibir
      end
    end
  
    def q0_19
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "."
        @count += 1
        q0_20
      else
        exibir
      end
    end
  
    def q0_20
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "8"
        @count += 1
        q0
      when "/"
        @mensagem << "8 "
        @count += 1
        q0
      else
        @mensagem << "8"
        exibir
      end
    end
  
    def q0_21
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "-"
        @count += 1
        q0
      when "/"
        @mensagem << "- "
        @count += 1
        q0
      else
        @mensagem << "-"
        exibir
      end
    end
  
    def q0_22
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "-"
        @count += 1
        q0_23
      else
        exibir
      end
    end
  
    def q0_23
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << ","
        @count += 1
        q0
      when "/"
        @mensagem << ", "
        @count += 1
        q0
      else
        @mensagem << ","
        exibir
      end
    end
  
    def q6
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "a"
        @count += 1
        q0
      when "/"
        @mensagem << "a "
        @count += 1
        q0
      when "-"
        @count += 1
        q7
      when "."
        @count += 1
        q10
      else
        @mensagem << "a"
        exibir
      end
    end
  
    def q7
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "w"
        @count += 1
        q0
      when "/"
        @mensagem << "w "
        @count += 1
        q0
      when "-"
        @count += 1
        q8
      when "."
        @count += 1
        q7_1
      else
        @mensagem << "w"
        exibir
      end
    end
  
    def q7_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "p"
        @count += 1
        q0
      when "/"
        @mensagem << "p "
        @count += 1
        q0
      else
        @mensagem << "p"
        exibir
      end
    end
  
    def q8
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "j"
        @count += 1
        q0
      when "/"
        @mensagem << "j "
        @count += 1
        q0
      when "-"
        @count += 1
        q9
      else
        @mensagem << "j"
        exibir
      end
    end
  
    def q9
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "1"
        @count += 1
        q0
      when "/"
        @mensagem << "1 "
        @count += 1
        q0
      else
        @mensagem << "1"
        exibir
      end
    end
  
    def q10
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "r"
        @count += 1
        q0
      when "/"
        @mensagem << "r "
        @count += 1
        q0
      when "."
        @count += 1
        q11
      when "-"
        @count += 1
        q10_1
      else
        @mensagem << "r"
        exibir
      end
    end
  
    def q10_1
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "."
        @count += 1
        q10_2
      else
        exibir
      end
    end
  
    def q10_2
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when "-"
        @count += 1
        q10_3
      else
        exibir
      end
    end
  
    def q10_3
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "."
        @count += 1
        q0
      when "/"
        @mensagem << ". "
        @count += 1
        q0
      else
        @mensagem << "."
        exibir
      end
    end
  
    def q11
      return exibir if @count >= @arrayMsg.size
      case @arrayMsg[@count]
      when " "
        @mensagem << "l"
        @count += 1
        q0
      when "/"
        @mensagem << "l "
        @count += 1
        q0
      else
        @mensagem << "l"
        exibir
      end
    end
  
    def exibir
      puts @mensagem
    end
  end
  
  puts "Digite o código Morse: "
  tradutor = CodigoMorse.new(gets.chomp)
  tradutor.iniciar
  