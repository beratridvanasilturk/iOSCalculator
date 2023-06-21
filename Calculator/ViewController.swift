//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

// TODO: Maksimum 1 Hane ile calisiyor bu sorun cozulecek + Dot Button Logic eksik

import UIKit

var firstNumber : Double = 0
var secondNumber: Double = 0
var resultNumber: Double = 0
var firstClick = 0
var resultString = ""

var additionResult: Double = 0
var minusResult: Double = 0
var percentResult: Double = 0
var multiplyResult: Double = 1
var divideResult: Double = 0

var additionButtonTapped : Bool = false
var minusButtonTapped: Bool = false
var percentButtonTapped: Bool = false
var multiplyButtonTapped: Bool = false
var divideButtonTapped: Bool = false


enum Operators {
    case Addition
    case Minus
    case Percent
    case Multiply
    case Divide
}

func getOperators(for calculateType: Operators) {
    
    
    switch calculateType {
        
    case .Addition:
        additionResult += resultNumber
        print("Addition icindeki  result:", additionResult)
        
    case .Minus:
    
        minusResult = -minusResult - resultNumber
        
        print(resultNumber, ".Minus icindeki result number")

        
        print("Minus icindeki minus result:", minusResult)
        
    case .Percent:
        percentResult += resultNumber
        print("Percent icindeki percent result:", additionResult)
        
    case .Multiply:
        
        multiplyResult *= resultNumber
        print("Multiply icindeki multiply result:", multiplyResult)
        print("Multiply icindeki result number:", resultNumber)
        
    case .Divide:
        divideResult += resultNumber
        print("Divide icindeki divide result:", additionResult)
        
    }
    
    
}


class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        equalType()
        
        resultNumber = Double(resultString) ?? 0
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if minusButtonTapped == true {
            resultLabel.text = "\(minusResult)"
            
            print("equal buttondaki result number:", minusResult)
        }
        
        if multiplyButtonTapped == true {
            resultLabel.text = "\(multiplyResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
        
        if additionButtonTapped == true {
            resultLabel.text = "\(additionResult)"
            
            print("equal buttondaki result number:", additionResult)
        }
    }
    
    @IBAction func ceButton(_ sender: UIButton) {
        
        resultLabel.text = "0"
        resultNumber = 0
        
        additionResult = 0.0
        minusResult = 0.0
        percentResult = 0.0
        multiplyResult = 0.0
        divideResult = 0.0
        
        additionButtonTapped = false
        minusButtonTapped = false
        percentButtonTapped = false
        multiplyButtonTapped = false
        divideButtonTapped = false
        
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        
        percentButtonTapped = true
        
        
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            
            print("FIRST CLICK'TE percent icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber = ((firstNumber * secondNumber) / 100)
            
            print("SECOND CLICK'TE percent icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        
        
        print("percent icindeki result number:", resultNumber)
        
    }
    
    @IBAction func additionButton(_ sender: UIButton) {
        
        additionButtonTapped = true
        
        getOperators(for: .Addition)
        
        
        resultNumber = 0
        resultLabel.text = "0"

    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        
        multiplyButtonTapped = true
        
        getOperators(for: .Multiply)
        
        resultNumber = 0
        resultLabel.text = "0"
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        
        divideButtonTapped = true
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            print("FIRST CLICK'TE divide icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber = firstNumber / secondNumber
            print("SECOND CLICK'TE divide icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        print("divide icindeki result number:", resultNumber)
        
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        
        getOperators(for: .Minus)
        
        minusButtonTapped = true
        
        resultNumber = 0
        resultLabel.text = "0"
        
    }
    
    
    
    @IBAction func zeroButton(_ sender: UIButton) {
        
        
        if resultNumber  == 0.0 {
            resultString = "0"
        } else {
            resultString = "\(Int(resultNumber))" + "0"
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
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "2"
        } else {
            resultString = "\(Int(resultNumber))" + "2"
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
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0

    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "4"
        } else {
            resultString = "\(Int(resultNumber))" + "4"
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
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "6"
        } else {
            resultString = "\(Int(resultNumber))" + "6"
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
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "8"
        } else {
            resultString = "\(Int(resultNumber))" + "8"
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
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
    }
}

