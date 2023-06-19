//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

// TODO: Maksimum 1 Hane ile calisiyor bu sorun cozulecek

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel! {
        didSet {
            
            resultLabel.text = "\(resultNumber)"
            print("IBOutlet ici result number : \(resultNumber)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var numbers = [0,1,2,3,4,5,6,7,8,9]
    var firstNumber : Double = 0
    var secondNumber: Double = 0
    var resultNumber: Double = 0
    var firstClick = 0

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
        resultNumber = 0.0
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
        
        additionButtonTapped = true
        
        var additionResult = 0
        
        if firstClick == 1 {
            
            resultNumber += firstNumber
            additionResult = Int(resultNumber)
            print("FIRST CLICK'TE addition icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber += secondNumber
            additionResult = Int(resultNumber)
            print("SECOND CLICK'TE addition icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        resultNumber = Double(additionResult)
        
            print("addition icindeki result number:", resultNumber)
        
    }
    
    
    @IBAction func zeroButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstZeroNumber = numbers[0]
            firstNumber = Double(firstZeroNumber)
            firstClick = 1
            
        } else {
            
            let secondZeroNumber = numbers[0]
            secondNumber = Double(secondZeroNumber)
            firstClick += 1
        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstOneNumber = numbers[1]
            firstNumber = Double(firstOneNumber)
            resultLabel.text = "\(firstOneNumber)"
            firstClick = 1
            
        } else {
            
            let secondOneNumber = numbers[1]
            secondNumber = Double(secondOneNumber)
            resultLabel.text = "\(secondOneNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstTwoNumber = numbers[2]
            firstNumber = Double(firstTwoNumber)
            resultLabel.text = "\(firstTwoNumber)"
            firstClick = 1
            
        } else {
            
            let secondTwoNumber = numbers[2]
            secondNumber = Double(secondTwoNumber)
            resultLabel.text = "\(secondTwoNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstThreeNumber = numbers[3]
            firstNumber = Double(firstThreeNumber)
            resultLabel.text = "\(firstThreeNumber)"
            firstClick = 1
            
        } else {
            
            let secondThreeNumber = numbers[3]
            secondNumber = Double(secondThreeNumber)
            resultLabel.text = "\(secondThreeNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstFourNumber = numbers[4]
            firstNumber = Double(firstFourNumber)
            resultLabel.text = "\(firstFourNumber)"
            firstClick = 1
            
        } else {
            
            let secondFourNumber = numbers[4]
            secondNumber = Double(secondFourNumber)
            resultLabel.text = "\(secondFourNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstFiveNumber = numbers[5]
            firstNumber = Double(firstFiveNumber)
            resultLabel.text = "\(firstFiveNumber)"
            firstClick = 1
            
        } else {
            
            let secondFiveNumber = numbers[5]
            secondNumber = Double(secondFiveNumber)
            resultLabel.text = "\(secondFiveNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstSixNumber = numbers[6]
            firstNumber = Double(firstSixNumber)
            resultLabel.text = "\(firstSixNumber)"
            firstClick = 1
            
        } else {
            
            let secondSixNumber = numbers[6]
            secondNumber = Double(secondSixNumber)
            resultLabel.text = "\(secondSixNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstSevenNumber = numbers[7]
            firstNumber = Double(firstSevenNumber)
            resultLabel.text = "\(firstSevenNumber)"
            firstClick = 1
            
        } else {
            
            let secondSevenNumber = numbers[7]
            secondNumber = Double(secondSevenNumber)
            resultLabel.text = "\(secondSevenNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstEightNumber = numbers[8]
            firstNumber = Double(firstEightNumber)
            resultLabel.text = "\(firstEightNumber)"
            firstClick = 1
            
        } else {
            
            let secondEightNumber = numbers[8]
            secondNumber = Double(secondEightNumber)
            resultLabel.text = "\(secondEightNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstNineNumber = numbers[9]
            firstNumber = Double(firstNineNumber)
            resultLabel.text = "\(firstNineNumber)"
            firstClick = 1
            
        } else {
            
            let secondNineNumber = numbers[9]
            secondNumber = Double(secondNineNumber)
            resultLabel.text = "\(secondNineNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        
        var dot = "."
        
        var percentButton = percentButtonTapped
        var multiplyButton = multiplyButtonTapped
        // Logic hakkinda dusunulecek
        
    }
    
}

