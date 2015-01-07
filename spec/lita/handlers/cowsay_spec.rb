require "spec_helper"

describe Lita::Handlers::Cowsay, lita_handler: true do
  it { is_expected.to route_command("cowsay Hello World!").to(:cowsay) }

  describe "#cowsay" do
    it "responds with text formatted with cowsay" do
      send_command "cowsay Hello World!"
      expect(replies.first).to match(" ______________ \n< Hello World! >\n -------------- \n      \\   ^__^\n       \\  (oo)\\_______\n          (__)\\       )\\/\\\n              ||----w |\n              ||     ||\n")
    end
  end
end
