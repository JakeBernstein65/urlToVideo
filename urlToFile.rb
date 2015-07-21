require 'net/https'
require 'open-uri'
require 'fileutils'

videoName = "tempVideo"
dirname = "tempName"
videoNumber = 0

#for each file in directory
Dir.foreach('urls') do |item|
  next if item[0] == '.' or item[1] == '.'
  puts "current file = #{item}"


#for each line in file
File.open("./urls/#{item}", "r+") do |f|
 
  f.each_line do |line|
    puts "current line = #{line}"
    if $. == 1
      dirname = line.gsub(/[\x00\/\\:\*\?\"<>\\\n\|]/, '')
      unless File.directory?(dirname)
      FileUtils.mkdir(dirname)

      end
    elsif $. == 2
      unless videoName == line.gsub(/[\x00\/\\:\*\?\"<>\\\n\|]/, '')
       videoName = line.gsub(/[\x00\/\\:\*\?\"<>\\\n\|]/, '')
       videoNumber = 0
     end
  else
    videoNumber += 1
    uri = URI.parse(line)
	http = Net::HTTP.new(uri.host, uri.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE

	request = Net::HTTP::Get.new(uri.request_uri)
	response = http.request(request)

    puts "response = #{response}"
    File.open("./#{dirname}/#{videoName}#{videoNumber}.mp4", 'w+') {|f| f.write(response.body) }
      end
    end
  end
end
	 puts "ending function now..."