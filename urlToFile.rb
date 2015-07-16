require 'net/https'
require 'net/http'
require 'open-uri'

File.open("./urls.txt", "r+") do |f|
 
  folder = "Action Movie"
  videoName = "Action"

  Dir.mkdir "./#{folder}"
  f.each_line do |line|
    puts line
    uri = URI.parse(line)
	http = Net::HTTP.new(uri.host, uri.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE

	request = Net::HTTP::Get.new(uri.request_uri)
	response = http.request(request)

    puts response
    File.open("./#{folder}/#{videoName}#{$.}.mp4", 'w+') {|f| f.write(response.body) }
  end
end
	 puts "ending function now..."
# File is closed automatically at end of block