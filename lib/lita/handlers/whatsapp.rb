module Lita
  module Handlers
    class Whatsapp < Handler
      http.post("/lita/whatsapp", :process_whatsapp_messages)

      def process_whatsapp_messages(request, response)
          Lita.logger.info("whatsapp message: #{request.user_agent}")
          response.body << "Hello, #{request.user_agent}!"
      end

      Lita.register_handler(self)
    end
  end
end
