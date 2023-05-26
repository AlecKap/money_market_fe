class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :vendor_count

  def initialize(attrs)
    @id = attrs[:id]
    @name = attrs[:attributes][:name]
    @street = attrs[:attributes][:street]
    @city = attrs[:attributes][:city]
    @county = attrs[:attributes][:county]
    @state = attrs[:attributes][:state]
    @zip = attrs[:attributes][:zip]
    @vendor_count = attrs[:attributes][:vendor_count]
  end
end
