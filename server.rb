require 'sinatra'
require 'asciidoctor'
require 'asciidoctor-pdf'

content = File.read('./main.adoc')
html_content = Asciidoctor.convert content, header_footer: true, safe: :safe

get '/wilhelm' do
  html_content
end

get '/' do
  "Please request a link."
end
