# Write your code here
class GetRequester
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
  def initialize (name)

    
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
    
  end
  
  def parse_json
    e = JSON.parse(self.get_response_body)
    e.collect do |name|
      name["occupation"]
    end
  end
  
end