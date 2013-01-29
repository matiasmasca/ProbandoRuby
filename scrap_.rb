
require 'open-uri' #Importar URi! Con i.
url = 'http://dictionary.cambridge.org/dictionary/british/hello.html'
page = open(url)
#text = page.read; nil #pasa el codigo fuente de la pagina a text.


require 'rexml/document'
include REXML
page_text = IO.read(page) #1
document = Document.new(page_text)  #2
topics = XPath.match(document, '//li/a/span' ) #3


#1) IO.read is the shortest way to convert an entire file into a single string.
#2) The Document object is the gateway to the entire collection of objects resulting from parsing the page.
#3) This line produces an array of all the <abbr> tags that are nested as desired. 
#The second argument to match is an XPath expres-sion. XPath is a standardized way of referring to parts 
#of XML documents.#It’s complicated and powerful.
#4) Each <abbr> tag contains a Text object. This line finds the first one that contains XML (and possibly whitespace). 
#Notice that find and its associated block are all inside the parentheses that surround. 
#It’s not unusual to see that in Ruby when the block is small enough (in which case you surround 
#the block with { and } instead of do and end). 

