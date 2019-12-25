require "spec_helper"

describe Lita::Handlers::Whatsapp, lita_handler: true do
  it { is_expected.to route_http(:post, "/whatsapp") }

    describe "#whatsapp_messages" do
        it "writes 'OK' as a reply" do
            response = http.post("/whatsapp")
            expect(response.body).to eq("Hello, Faraday v0.17.1!")
        end
    end    
end
