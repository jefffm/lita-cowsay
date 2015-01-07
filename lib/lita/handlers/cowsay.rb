require "ruby_cowsay"

module Lita
  module Handlers
    class Cowsay < Handler
      route(/^cowsay\s+(.+)/, :cowsay, command: true, help: {
        t("help.cowsay_key") => t("help.cowsay_value")
      })

      def cowsay(response)
        text = response.args.join(' ')
        response.reply Cow.new.say(text)
      end
    end

    Lita.register_handler(Cowsay)
  end
end
