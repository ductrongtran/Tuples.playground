//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Create tuples
let ipad = ("iPad Air 2", 499)
let iphone: (String, Double) = ("iPhone 6", 199.0)

// Use tuples
ipad.0          // name
ipad.1          // price

iphone.0
iphone.1

// Named tuples
let apple = (name: "Apple Inc.", marketCap: 9999999999999999999.9)
apple.name
apple.marketCap

var google = (name: "Google Inc.", marketCap: 999999999.9)
google.name
google.marketCap

google = apple
google

// tuples help functions to return multiple values

let total = 32.20
let taxPercentage = 0.08
let subtotal = total / (taxPercentage + 1)

func calculateTipWith(tipPercentage: Double) -> (tipAmount: Double, total: Double)
{
    let tipAmt = subtotal * tipPercentage
    let finalTotal = total + tipAmt
    
    return (tipAmt, finalTotal)
}

calculateTipWith(0.15)

// TUPLES AND SWITCH STATEMENTS

let error = (404, "Not Found")  // code, error message

switch error {
case (200, _):
    // don't care about the error message
    println("Success!")
case (_, "Not Found"):
    println("Resources not available")
case (300...399, _):
    println("Redirection")
case (500, let description):
    // operate on the description
    println("\(description), please try again later")
case let (code, description):
    // Now we can use both code and description
    println("Unexpected error code \(code): \(description)")
}

































