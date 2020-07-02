class Taxes
    include HTTParty
    base_uri 'http://www.homologshipsmart.com/shipsmart/shipapi/api/v2/cotation/landed-cost'
    default_params fields:"country, taxes", q: "search"
    format :json

    def self.for term
        get("",query: {query: term})["elements"]
    end

end