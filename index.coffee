Block   = require('node-webpipe').Block
rates   = require 'bitcoin-exchange-rates'

new Block ->
  @name "Bitcoin Exchange Rates"
  @description "Determine exchanges rates for a given amount of Bitcoins."
  @input "bitcoins", "number", "The amount of bitcoins to convert."
  @input "currency", "string", "The currency code to convert to."
  @output "amount", "number", "The converted amount of Bitcoin."
  @handle (inputs, callback) ->
    console.log inputs
    
    rates.fromBTC inputs.bitcoins, inputs.currency, (err, amount) ->
      outputs =
        amount: if err then false else amount
      callback false, outputs
  @listen()
