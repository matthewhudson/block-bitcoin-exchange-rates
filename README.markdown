# Bitcoin Exchange Rates Block

## Example Usage

	curl -v -X OPTIONS http://block-bitcoin-exchange-rates.herokuapp.com
	
	curl -i -X POST -d '{"inputs":[{"bitcoins":1, "currency":"USD"}]}' -H "Content-Type: application/json" http://block-bitcoin-exchange-rates.herokuapp.com