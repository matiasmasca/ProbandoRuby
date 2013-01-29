
require 'rexml/document'
include REXML
page_text = IO.read("www.w3.org.html")     # (1)
document = Document.new(page_text)         # (2)
topics = XPath.match(document, '//li/a/abbr')  # (3)
