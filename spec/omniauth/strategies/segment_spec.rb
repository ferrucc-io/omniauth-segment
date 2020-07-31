RSpec.describe OmniAuth::Segment do
  it "has a version number" do
    expect(OmniAuth::Segment::VERSION).not_to be nil
  end

  subject do
    OmniAuth::Strategies::Segment.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("segment")
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://id.segmentapis.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://id.segmentapis.com/oauth2/auth')
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://id.segmentapis.com/oauth2/token')
    end
  end
end
