//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

import UIKit

enum Operators {
    case Addition
    case Minus
    case Percent
    case Multiply
    case Divide
    case Dot
}

// MARK: Variables
var resultNumber: Double = 0
var resultString = ""
var additionResult: Double = 0
var minusResult: Double = 0
var percentResult: Double = 1
var multiplyResult: Double = 1
var divideResult: Double = 1

var firstClickInDivide = 0

var additionButtonTapped = false
var minusButtonTapped = false
var percentButtonTapped = false
var multiplyButtonTapped = false
var divideButtonTapped = false
var dotButtonTapped = false

//MARK: Classes
class ViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Functions
    // Every math-function button works in the Operators Enum
    func getOperators(for calculateType: Operators) {
        
        switch calculateType {
            
        case .Addition:
            
            additionResult += resultNumber
            
            print("Addition icindeki  result:", additionResult)
            
        case .Minus:
            
            minusResult = -minusResult - resultNumber
            
            print("Minus icindeki minus result:", minusResult)
            print("Minus icindeki result number:", resultNumber)
            
        case .Percent:
            
            percentResult = ((resultNumber * percentResult) / 100)
            
            print("Percent icindeki percent result:", percentResult)
            print("Percent icindeki result number:", resultNumber)
            
        case .Multiply:
            
            multiplyResult *= resultNumber
            
            print("Multiply icindeki multiply result:", multiplyResult)
            print("Multiply icindeki result number:", resultNumber)
            
        case .Divide:
            
            if firstClickInDivide == 0 {
                
                divideResult = resultNumber
                
            } else {
                
                divideResult /= resultNumber
            }
            
            print("Divide icindeki divide result: ", divideResult)
            print("Divide icindeki result number: ", resultNumber)
            
        case .Dot: break
            
        }
    }
    
    func equalType() {
        
        if additionButtonTapped == true {
            additionButton(UIButton())
        }
        
        if minusButtonTapped == true {
            minusButton(UIButton())
        }
        
        if percentButtonTapped == true {
            percentButton(UIButton())
        }
        
        if multiplyButtonTapped == true {
            multiplyButton(UIButton())
        }
        
        if divideButtonTapped == true {
            divideButton(UIButton())
        }
        
        if dotButtonTapped == true {
            dotButton(UIButton())
        }
    }
    
    //MARK: IBActions
    @IBAction func equalButton(_ sender: UIButton) {
        
        equalType()
        
        resultNumber = Double(resultString) ?? 0
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki aditionresult number:", additionResult)
        }
        
        if minusButtonTapped == true {
            resultLabel.text = "\(minusResult)"
            
            print("equal buttondaki minus result number:", minusResult)
        }
        
        if multiplyButtonTapped == true {
            resultLabel.text = "\(multiplyResult)"
            
            print("equal buttondaki multiply result number:", multiplyResult)
        }
        
        if percentButtonTapped == true {
            resultLabel.text = "\(percentResult)"
            
            print("equal buttondaki percent result number:", percentResult)
        }
        
        if divideButtonTapped == true {
            resultLabel.text = "\(divideResult)"
            
            print("equal buttondaki divide result number:", divideResult)
        }
        
    }
    
    @IBAction func ceButton(_ sender: UIButton) {
        
        resultLabel.text = "0"
        resultNumber = 0.0
        additionResult = 0.0
        minusResult = 0.0
        percentResult = 1.0
        multiplyResult = 1.0
        divideResult = 1.0
        
        firstClickInDivide = 0
        
        additionButtonTapped = false
        minusButtonTapped = false
        percentButtonTapped = false
        multiplyButtonTapped = false
        divideButtonTapped = false
        dotButtonTapped = false
        
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        
        percentButtonTapped = true
        
        getOperators(for: .Percent)
        
        dotButtonTapped = false
        
        resultNumber = 0.0
        resultLabel.text = ""
        
    }
    
    @IBAction func additionButton(_ sender: UIButton) {
        
        additionButtonTapped = true
        
        getOperators(for: .Addition)
        
        dotButtonTapped = false
        
        resultNumber = 0.0
        resultLabel.text = "0"
        
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        
        multiplyButtonTapped = true
        
        getOperators(for: .Multiply)
        
        dotButtonTapped = false
        
        resultNumber = 0.0
        resultLabel.text = "0"
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        
        divideButtonTapped = true
        
        
        getOperators(for: .Divide)
        
        dotButtonTapped = false
        
        resultNumber = 0.0
        resultLabel.text = ""
        firstClickInDivide += 1
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        
        getOperators(for: .Minus)
        
        minusButtonTapped = true
        
        dotButtonTapped = false
        
        resultNumber = 0.0
        resultLabel.text = "0"
        
    }
    
    //  For more functionalty we can improve the dotButton but in this case the dotButton works with only a dot.
    @IBAction func dotButton(_ sender: UIButton) {
        
        dotButtonTapped = true
        
        if (resultNumber == 0.0) {
            
            resultString = "0."
            
        } else {
            
            if resultString.range(of: ".") == nil {
                
                resultString = resultLabel.text! + "."
                
            }
        }
        
        resultLabel.text = resultString
        
        print("in dot resultNum: ", resultNumber)
        
    }
    
    // For calculate functionalty we are setting each number buttons in resultStrings
    @IBAction func zeroButton(_ sender: UIButton) {
        
        
        if resultNumber  == 0.0 {
            
            resultString = "0"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "0"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "0"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "1"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "1"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "1"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "2"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "2"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "2"
            
        }
                
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "3"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "3"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "3"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "4"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "4"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "4"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "5"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "5"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "5"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "6"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "6"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "6"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "7"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "7"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "7"
            
        }
        
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "8"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "8"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "8"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            
            resultString = "9"
            
        } else {
            
            resultString = "\(Int(resultNumber))" + "9"
            
        }
        
        if dotButtonTapped == true {
            
            resultString = "\(Int(resultNumber))" + "." + "9"
            
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
}
