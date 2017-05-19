require "net/http"
require "uri"

class Query

  def initialize 

  	@mimi = 'H4CA45097'
  	@mimi_victory_fund = 'C00546853'

  end 

  def get 

  	code = @mimi

  	query_str = "http://www.fec.gov/fecviewer/CandidateCommitteeDetail.do?candidateCommitteeId=#{code}&tabIndex=1" 

	uri = URI(query_str)
	
	Net::HTTP.get_response(uri) # => String

  end 

end 


q = Query.new 
res = q.get 

puts "result: #{res.body}"

