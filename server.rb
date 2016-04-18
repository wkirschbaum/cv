require 'sinatra'
require 'asciidoctor'

content = '_Zen_ in the art of writing http://asciidoctor.org[AsciiDoc].'
cv_html = Asciidoctor.convert content, header_footer: true, safe: :safe

get '/' do
  cv_html
end
