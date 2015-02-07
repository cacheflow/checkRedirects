require "csv"
require "mechanize"
require "uri"
require "open-uri"

links = []

CSV.foreach("linkCheck.csv") do |csv|
	agent = Mechanize.new 
	fixed = csv.to_s.tr("[]", "").strip
	screwed_up = []
	sites = "http://#{csv.to_s.tr('[]+"', '').strip}"
	 	begin
	 	check_links = agent.get("#{sites}")
		rescue 	StandardError=>e 
			response ="#{e}" 
			puts response	

	end 


end 