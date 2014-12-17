require "typhoeus"
require 'nokogiri' 

require_relative '../../config/environment'

request = Typhoeus.get('http://bbs.pcbaby.com.cn/')
body = request.response_body
body = body.encode("utf-8", "gbk", :invalid => :replace, :undef => :replace)
doc = Nokogiri::HTML.parse(body)
js_url = doc.css('div.drop > script.defer').attr('src')
request = Typhoeus.get(js_url)
body = request.response_body
body = body.encode("utf-8", "gbk", :invalid => :replace, :undef => :replace)
doc = Nokogiri::HTML.parse(body)
doc.css('a').each do |result|
	board = result.text
	url = result.attr('href').gsub('\"','')
	puts board
	puts url
	Board.create(
		:name => board,
		:url => url,
		:site_id => 1
		)
end