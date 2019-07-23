//
//  main.swift
//  Levi-Calculator
//
//  Created by Levi Davis on 7/21/19.
//  Copyright © 2019 Levi Davis. All rights reserved.
//

import Foundation



//a filter fucntion that I tried to create that could be called by the calculator to, well, filter an array. I can't figure out how to take the user inputs and use them as arguments.
func filterFunction() {
    
    func myFilter(inputArray: [Double], filter: (Double)) -> [Double] {
        var filteredArray = [Double]()
        
        for i in inputArray {
            if i > filter {
                filteredArray.append(i)
            }
        }
        return filteredArray
    }
}

//start the calculator
func calculator() {
    
    print("Enter a problem")
    
    let userInput = readLine()
    //create an array so the components can be converted to Double or read as an operator
    let inputArray = userInput?.components(separatedBy: " ")
    
    
    //Optional binding
    if let userInput = userInput {
        
        if userInput.contains("filter") {
            filterFunction()
        }
        
        if let inputArray = inputArray {
            //convert input from strings to doubles
            var a = Double(inputArray[0])
            var b = Double(inputArray[2])
            //lots and lots of optional binding
            if let a = a {
                if let b = b {
                    
                    //Switch to parse which operator is being used
                    switch inputArray[1] {
                    case "+":
                        print(a + b)
                        
                    case "-":
                        print(a - b)
                        
                    case "*":
                        print(a * b)
                        
                    case "/":
                        print(a / b)
                        
                    case "?":
                        //Mystery operator function
                        func mysteryOperator() {
                            print(sqrt(a))
                            print("Guess the operator!")
                            let mysterGuess = readLine()
                            if let mysteryGuess = mysterGuess {
                                
                                if mysteryGuess == "sqrt" {
                                    print("Correct!")
                                } else {
                                    print("Sorry, it was 'sqrt'!")
                                }
                            }
                        }
                        mysteryOperator()
                        
                    default:
                        print("Invalid entry")
                    }
                }
            }
        }
    }
}
calculator()
