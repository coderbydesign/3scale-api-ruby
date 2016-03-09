require '3scale/api'

RSpec.describe ThreeScale::API do
  context '#new' do
    subject!(:client) { described_class.new(admin_domain: 'foo', provider_key: 'bar') }

    it { is_expected.to be_a(ThreeScale::API::Client) }
    it { expect(client.http_client).to be_a(ThreeScale::API::HttpClient) }
  end
end
