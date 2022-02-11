%dw 2.0
output application/json
ns ns0 http://www.samples.com/SalesOrder/
---
{
	order: {
		sourceOrderId: payload.ns0#CreateOrder.ns0#Order.OrderNumber,
		source: payload.ns0#CreateOrder.ns0#Order.SourceSystem,
		"type": payload.ns0#CreateOrder.ns0#Order.Type,
		creationChannel: payload.ns0#CreateOrder.ns0#Order.CreationChannel,
		distributionChannel: payload.ns0#CreateOrder.ns0#Order.DistributionChannel,
		countryPlacedFrom: payload.ns0#CreateOrder.ns0#Order.CountryPlacedFrom,
		currency: payload.ns0#CreateOrder.ns0#Order.Currency,
		orderDateTime: payload.ns0#CreateOrder.ns0#Order.OrderDateTime,
		receivedDateTime: payload.ns0#CreateOrder.ns0#Order.ReceivedDateTime,
		prepaidFlag: "",
		requestedDeliveryDate: payload.ns0#CreateOrder.ns0#Order.RequestedDeliveryDate,
		salesLegalEntity: payload.ns0#CreateOrder.ns0#Order.SalesLegalEntity,
		language: payload.ns0#CreateOrder.ns0#Order.Language,
		numOfLineItems: "",
		partyId: payload.ns0#CreateOrder.ns0#Order.PartyId,
		amount: [{
			'type': "",
			value: ""
		}],
		alternateIdentifier: [{
			systemIdentifier: "",
			systemCode: ""
		}],
		lineItem: [{
			sourceLineItemNumber: ""
		}]
	}
}