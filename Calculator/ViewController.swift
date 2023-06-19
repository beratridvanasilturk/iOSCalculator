//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel! {
        didSet {
            resultLabel.text = ("\(resultNumber)")
            print("IBOutlet ici result number : \(resultNumber)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var numbers = [0,1,2,3,4,5,6,7,8,9]
    var firstNumber : Int = 0
    var secondNumber: Int = 0
    var resultNumber: Int = 0
    var groupNumbers: Array<Int> = []
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
            print("Button algilanamadi")
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
        groupNumbers.removeAll()
        firstClick = 0
        firstNumber = 0
        secondNumber = 0
        
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        
        percentButtonTapped = true
        
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        
        multiplyButtonTapped = true
        
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        
        divideButtonTapped = true
        
        var divideResult = 0
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            divideResult = resultNumber
            print("FIRST CLICK'TE divide icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber = firstNumber / secondNumber
            divideResult = resultNumber
            print("SECOND CLICK'TE divide icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        resultNumber = divideResult
        
            print("addition icindeki result number:", resultNumber)
        
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        
        minusButtonTapped = true
        
        var minusResult = 0
        
        if firstClick == 1 {
            
            resultNumber = firstNumber
            minusResult = resultNumber
            print("FIRST CLICK'TE minus icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber -= secondNumber
            minusResult = resultNumber
            print("SECOND CLICK'TE minus icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        resultNumber = minusResult
        
            print("minus icindeki result number:", resultNumber)
        
    }
    
    @IBAction func additionButton(_ sender: UIButton) {
        
        additionButtonTapped = true
        
        var additionResult = 0
        
        if firstClick == 1 {
            
            resultNumber += firstNumber
            additionResult = resultNumber
            print("FIRST CLICK'TE addition icindeki result number:", resultNumber, "first click:", firstClick)
            
        } else {
            
            resultNumber += secondNumber
            additionResult = resultNumber
            print("SECOND CLICK'TE addition icindeki result number:", resultNumber, "else icindeki first click:", firstClick)
        }
        
        resultNumber = additionResult
        
            print("addition icindeki result number:", resultNumber)
        
    }
    
    
    @IBAction func zeroButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstZeroNumber = numbers[0]
            firstNumber = firstZeroNumber
            firstClick = 1
            
        } else {
            
            let secondZeroNumber = numbers[0]
            secondNumber = secondZeroNumber
            firstClick += 1
        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstOneNumber = numbers[1]
            firstNumber = firstOneNumber
            resultLabel.text = "\(firstOneNumber)"
            firstClick = 1
            
        } else {
            
            let secondOneNumber = numbers[1]
            secondNumber = secondOneNumber
            resultLabel.text = "\(secondOneNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstTwoNumber = numbers[2]
            firstNumber = firstTwoNumber
            resultLabel.text = "\(firstTwoNumber)"
            firstClick = 1
            
        } else {
            
            let secondTwoNumber = numbers[2]
            secondNumber = secondTwoNumber
            resultLabel.text = "\(secondTwoNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstThreeNumber = numbers[3]
            firstNumber = firstThreeNumber
            resultLabel.text = "\(firstThreeNumber)"
            firstClick = 1
            
        } else {
            
            let secondThreeNumber = numbers[3]
            secondNumber = secondThreeNumber
            resultLabel.text = "\(secondThreeNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstFourNumber = numbers[4]
            firstNumber = firstFourNumber
            resultLabel.text = "\(firstFourNumber)"
            firstClick = 1
            
        } else {
            
            let secondFourNumber = numbers[4]
            secondNumber = secondFourNumber
            resultLabel.text = "\(secondFourNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstFiveNumber = numbers[5]
            firstNumber = firstFiveNumber
            resultLabel.text = "\(firstFiveNumber)"
            firstClick = 1
            
        } else {
            
            let secondFiveNumber = numbers[5]
            secondNumber = secondFiveNumber
            resultLabel.text = "\(secondFiveNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstSixNumber = numbers[6]
            firstNumber = firstSixNumber
            resultLabel.text = "\(firstSixNumber)"
            firstClick = 1
            
        } else {
            
            let secondSixNumber = numbers[6]
            secondNumber = secondSixNumber
            resultLabel.text = "\(secondSixNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstSevenNumber = numbers[7]
            firstNumber = firstSevenNumber
            resultLabel.text = "\(firstSevenNumber)"
            firstClick = 1
            
        } else {
            
            let secondSevenNumber = numbers[7]
            secondNumber = secondSevenNumber
            resultLabel.text = "\(secondSevenNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstEightNumber = numbers[8]
            firstNumber = firstEightNumber
            resultLabel.text = "\(firstEightNumber)"
            firstClick = 1
            
        } else {
            
            let secondEightNumber = numbers[8]
            secondNumber = secondEightNumber
            resultLabel.text = "\(secondEightNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        if firstClick == 0 {
            
            let firstNineNumber = numbers[9]
            firstNumber = firstNineNumber
            resultLabel.text = "\(firstNineNumber)"
            firstClick = 1
            
        } else {
            
            let secondNineNumber = numbers[9]
            secondNumber = secondNineNumber
            resultLabel.text = "\(secondNineNumber)"
            firstClick += 1
        }
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
    }
    
}

