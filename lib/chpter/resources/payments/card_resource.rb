# TODO: Move to payment resource class
module Chpter
  class CardResource < Resource
    def initiate(customer_details: {}, products: [], amount: {}, card_details: {}, callback_details: {})
      body = {customer_details: customer_details, products: products, amount: amount, card_details: card_details, callback_details: callback_details}
      Object.new post("/api/payment/payment-initiate-callback/", body: body).body
    end
  end
end
