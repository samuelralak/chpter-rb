module Chpter
  class CheckoutResource < Resource
    def express(transaction_data: {}, redirect_urls: {})
      body = {transaction_data: transaction_data, redirect_urls: redirect_urls}
      Object.new post("/checkout.sessions/express/redirect/session", body: body).body
    end
  end
end
