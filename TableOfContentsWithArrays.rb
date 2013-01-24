#Table of contents, revisited. 
#Rewrite your table of contents pro-gram on page 36. Start the program with an array holding all of
#the information for your table of contents (chapter names, page
#numbers, and so on). Then print out the information from the
#array in a beautifully formatted table of contents.

#              Table of Contents
#Chapter 1:     Getting Started          page 1
#Chapter 2:     Numbers                  page 9
#Chapter 3:     Letters                  page 13


capitulos = []
paginas = []

#Cargando el contenido...
capitulos.push 'Getting Started'
paginas.push '1'
capitulos.push 'Numbers'
paginas.push '9'
capitulos.push 'Letters'
paginas.push '13'

line_width = 50
puts('Table of Contents'.center(line_width))
indice = 0
nrocapitulo = 1
capitulos.each do |capitulo|
 puts( ('Chapter ' + nrocapitulo.to_s).ljust(line_width/2) + capitulo.ljust(line_width/2)  + ('page ' + paginas[indice.to_i]).ljust(line_width/2))
 indice = indice + 1
 nrocapitulo = nrocapitulo + 1
end

#Sin saber como llamar al indice que tiene el each.