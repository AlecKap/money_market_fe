require 'rails_helper'

RSpec.describe Market do
  it 'exists and has attributes' do
    attrs = {
      id: 123,
      attributes: {
        name: 'Farmers Market',
        street: 'Main St.',
        city: 'Cottage Grove',
        county: 'South Washington',
        state: 'MN',
        zip: '55016',
        vendor_count: 17
      }
    }

    market = Market.new(attrs)

    expect(market.id).to eq(123)
    expect(market.name).to eq('Farmers Market')
    expect(market.city).to eq('Cottage Grove')
    expect(market.county).to eq('South Washington')
    expect(market.state).to eq('MN')
    expect(market.zip).to eq('55016')
    expect(market.vendor_count).to eq(17)
  end
end
