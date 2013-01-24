# encoding: UTF-8

#Caracteres UTF-8
('0'..'127').each do |numero|
    puts (numero.to_i).chr
end

#Y los caracteres raros...
puts "".encode("ISO-8859-1") + "ñ á ó ü"

variable = "STÖCK LEONOR ANGELICA".encode("ISO-8859-1") 
puts variable

variable = "".encode("ISO-8859-1") + 'STÖCK LEONOR ANGELICA'
puts variable