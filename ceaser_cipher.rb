#def ceaser_cipher(text, rotate)
#  cypher = ""
#  text.chars.each do |chr|
#    position = chr.ord
#    if chr.match(/[A-Z]/) or chr.match(/[a-z]/)
#      if position < 91 
#        inicio = 65
#      else
#        inicio = 97
#      end
#      position = (((position - inicio)+ rotate ) % 26) + inicio
#      cypher += position.chr
#    else
#      cypher += chr
#    end
#  end
#  cypher
#end


class Cypher
  def ceaser_cipher(text, rotate)
    cypher = ""
    text.chars.each do |chr|
  
      position = chr.ord
  
      if chr.match(/[A-Z]/)
        if position > 90 
          position = position - 26
        else
          position = (((position - 65) + rotate) % 26)+ 65
        end
      cypher += position.chr
  
      elsif chr.match(/[a-z]/)
        if position > 122
        position = position - 26
        else
        position = (((position - 97) + rotate) % 26)+ 97
        end
      cypher += position.chr
  
      else
        cypher += chr
      end
    end
    cypher
  end 
  
end
puts "========================================================="
puts "˜˜˜˜˜˜˜˜˜˜˜˜˜˜````````CIFRA DE CESAR```````˜˜˜˜˜˜˜˜˜˜˜˜˜˜"
puts "========================================================="
print "=========Palavra: "
text = gets.to_s
print "=========Intervalo: "
rotate = gets.to_i
puts "========================================================="

x = Cypher.new
puts "*****************************"
puts " CRIPTOGRAFIA = #{x.ceaser_cipher(text, rotate)}"
puts "*****************************"