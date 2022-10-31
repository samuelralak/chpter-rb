# TODO: Move to payment resource class
#
module Chpter
  class MpesaResource < Resource
    def initiate(customer_details: {}, products: [], amount: {}, callback_details: {})
      body = {customer_details: customer_details, products: products, amount: amount, callback_details: callback_details}
      Object.new post("/api/payment/payment-initiate-callback/", body: body).body
    end
  end
end
