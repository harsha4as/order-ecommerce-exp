%dw 2.0
output application/xml
ns soap http://schemas.xmlsoap.org/soap/envelope
ns ns0 http://www.samples.com/SalesOrder/
---
"soapenv:Envelope" @("xmlns:soapenv": "http://schemas.xmlsoap.org/soap/envelope/"): {
	"soapenv:Body": {
		"NS1:WebserviceOrder" @("ServiceVersion": "1.3",
        "xmlns:NS1": "http://www.samples.com/SalesOrder/"): {
			CreateOrderResponse: {
				OrderNumber: vars.orderNumber,
				SourceSystem: vars.sourceSystem,
				OrderStatus: "1"
			}
		}
	}
}