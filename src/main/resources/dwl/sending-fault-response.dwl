%dw 2.0
output application/xml
ns soap http://schemas.xmlsoap.org/soap/envelope
---
{
    body: {
        soap#Fault: {
            faultcode: "soap:Server",
            faultstring: " ERROR",
            "detail": {
				   "Text": error.description
				}
            
        }
    }
}