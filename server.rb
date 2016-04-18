require 'sinatra'
require 'asciidoctor'

def html_content
  return @html_content if @html_content && settings.environment == :production
  content = File.read('./main.adoc')
  @html_content = Asciidoctor.convert content, header_footer: true, safe: :safe
end

get '/' do
  html_content
end
