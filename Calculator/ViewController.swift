//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

// TODO: Maksimum 1 Hane ile calisiyor bu sorun cozulecek + Dot Button Logic eksik

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    enum Operators {
        case addition
        case minus
        case percent
        case multiply
        case divide
    }
    
    var firstNumber : Double = 0
    var secondNumber: Double = 0
    var resultNumber: Double = 0
    var firstClick = 0
    var resultString = ""
    
    var additionButtonTapped : Bool = false
    var minusButtonTapped: Bool = false
    var percentButtonTapped: Bool = false
    var multiplyButtonTapped: Bool = false
    var divideButtonTapped: Bool = false
    
    
    
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
        } else {
            print("Button unidentified")
        }
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        equalType()
        
        resultLabel.text = "\(resultNumber)"
        print("equal buttondaki result number:", resultNumber)
    }
    
    
    @IBAction func ceButton(_ sender: UIButton) {
        
        resultLabel.text = "0"
        resultNumber = 0
        firstClick = 0
        firstNumber = 0.0
        secondNumber = 0.0
        
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
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        
        multiplyButtonTapped = true
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            print("FIRST CLICK'TE multiply icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber = firstNumber * secondNumber
            print("SECOND CLICK'TE multiply icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        print("multiply icindeki result number:", resultNumber)
        
        
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
        
        minusButtonTapped = true
        
        //        var minusResult = 0
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            //            minusResult = Int(resultNumber)
            print("FIRST CLICK'TE minus icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber -= secondNumber
            //            minusResult = Int(resultNumber)
            print("SECOND CLICK'TE minus icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        //        resultNumber = Double(minusResult)
        
        print("minus icindeki result number:", resultNumber)
        
    }
    
    @IBAction func additionButton(_ sender: UIButton) {
        
        var additionEnum = Operators.addition
        
        let firstAdditionResult = resultNumber
        resultNumber = 0
        resultLabel.text = "0"
    
        
        print("first addition result",firstAdditionResult)
        
        var secondAdditionResult = resultNumber
        var totalAdditionResult = firstAdditionResult + secondAdditionResult
        print("total addition result;", totalAdditionResult)
        
        // TODO: LOGIC YAPILACAK
        
        //        if firstClick == 1 {
        //
        //            resultNumber += firstNumber
        //            additionResult = Int(resultNumber)
        //            print("FIRST CLICK'TE addition icindeki result number:", resultNumber, "first click:", firstClick)
        //
        //        } else {
        //
        //            resultNumber += secondNumber
        //            additionResult = Int(resultNumber)
        //            print("SECOND CLICK'TE addition icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        //        }
        //
        //        resultNumber = Double(additionResult)
        //
        //            print("addition icindeki result number:", resultNumber)
        
    }
    
    
    @IBAction func zeroButton(_ sender: UIButton) {
        
        
        if resultNumber  == 0.0 {
            resultString = "0"
        } else {
            resultString = "0" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        //        if firstClick == 0 {
        //
        //            let firstZeroNumber = 0
        //            firstNumber = Double(firstZeroNumber)
        //            firstClick = 1
        //
        //        } else {
        //
        //            let secondZeroNumber = 0
        //            secondNumber = Double(secondZeroNumber)
        //            firstClick += 1
        //        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        
//        if firstClick == 0 {
            if resultNumber  == 0.0 {
                resultString = "1"
            } else {
                resultString = "1" + "\(resultNumber)"
            }
            
//            firstClick = 1
            resultLabel.text = resultString
            resultNumber = Double(resultString) ?? 0
        }
        
        //        if firstClick == 0 {
        //
        //            let firstOneNumber = 1
        //            firstNumber = Double(firstOneNumber)
        //            resultLabel.text = "\(firstOneNumber)"
        //            firstClick = 1
        //
        //        } else {
        //
        //            let secondOneNumber = 1
        //            secondNumber = Double(secondOneNumber)
        //            resultLabel.text = "\(secondOneNumber)"
        //            firstClick += 1
        //        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "2"
        } else {
            resultString = "2" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        //        if firstClick == 0 {
        //
        //            let firstTwoNumber = 2
        //            firstNumber = Double(firstTwoNumber)
        //            resultLabel.text = "\(firstTwoNumber)"
        //            firstClick = 1
        //
        //        } else {
        //
        //            let secondTwoNumber = 2
        //            secondNumber = Double(secondTwoNumber)
        //            resultLabel.text = "\(secondTwoNumber)"
        //            firstClick += 1
        //        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "3"
        } else {
            resultString = "3" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        
//        if firstClick == 0 {
//
//            let firstThreeNumber = 3
//            firstNumber = Double(firstThreeNumber)
//            resultLabel.text = "\(firstThreeNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondThreeNumber = 3
//            secondNumber = Double(secondThreeNumber)
//            resultLabel.text = "\(secondThreeNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "4"
        } else {
            resultString = "4" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
//        if firstClick == 0 {
//
//            let firstFourNumber = 4
//            firstNumber = Double(firstFourNumber)
//            resultLabel.text = "\(firstFourNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondFourNumber = 4
//            secondNumber = Double(secondFourNumber)
//            resultLabel.text = "\(secondFourNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "5"
        } else {
            resultString = "5" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
//        if firstClick == 0 {
//
//            let firstFiveNumber = 5
//            firstNumber = Double(firstFiveNumber)
//            resultLabel.text = "\(firstFiveNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondFiveNumber = 5
//            secondNumber = Double(secondFiveNumber)
//            resultLabel.text = "\(secondFiveNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "6"
        } else {
            resultString = "6" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
//        if firstClick == 0 {
//
//            let firstSixNumber = 6
//            firstNumber = Double(firstSixNumber)
//            resultLabel.text = "\(firstSixNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondSixNumber = 6
//            secondNumber = Double(secondSixNumber)
//            resultLabel.text = "\(secondSixNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "7"
        } else {
            resultString = "7" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        
//        if firstClick == 0 {
//
//            let firstSevenNumber = 7
//            firstNumber = Double(firstSevenNumber)
//            resultLabel.text = "\(firstSevenNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondSevenNumber = 7
//            secondNumber = Double(secondSevenNumber)
//            resultLabel.text = "\(secondSevenNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "8"
        } else {
            resultString = "8" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        

//        if firstClick == 0 {
//
//            let firstEightNumber = 8
//            firstNumber = Double(firstEightNumber)
//            resultLabel.text = "\(firstEightNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondEightNumber = 8
//            secondNumber = Double(secondEightNumber)
//            resultLabel.text = "\(secondEightNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        
        if resultNumber  == 0.0 {
            resultString = "9"
        } else {
            resultString = "9" + "\(resultNumber)"
        }
        
        resultLabel.text = resultString
        resultNumber = Double(resultString) ?? 0
        
        
//        if firstClick == 0 {
//
//            let firstNineNumber = 9
//            firstNumber = Double(firstNineNumber)
//            resultLabel.text = "\(firstNineNumber)"
//            firstClick = 1
//
//        } else {
//
//            let secondNineNumber = 9
//            secondNumber = Double(secondNineNumber)
//            resultLabel.text = "\(secondNineNumber)"
//            firstClick += 1
//        }
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        
        var dot = "."
        
        var percentButton = percentButtonTapped
        var multiplyButton = multiplyButtonTapped
        // Logic hakkinda dusunulecek
        
    }
    
}

