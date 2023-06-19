//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    typealias AdditionHandler = () -> Int
    
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

    func equalType() {
        additionButton(UIButton())
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
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
    }
    
    @IBAction func additionButton(_ sender: UIButton) {
        
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
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        equalType()
        
        resultLabel.text = "\(resultNumber)"
        print("equal buttondaki result number:", resultNumber)
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
            print("first click:",firstClick)
            firstClick = 1
            print("first click:", firstClick)
            
        } else {
            
            let secondOneNumber = numbers[1]
            secondNumber = secondOneNumber
            firstClick += 1
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        
        if firstClick == 0 {
            
            let firstTwoNumber = numbers[2]
            firstNumber = firstTwoNumber
            firstClick = 1
            
        } else {
            
            let secondTwoNumber = numbers[2]
            secondNumber = secondTwoNumber
            firstClick += 1
        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        let threeNumber = numbers[3]
        groupNumbers.append(threeNumber)
        print("\(threeNumber)")
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        let fourNumber = numbers[4]
        groupNumbers.append(fourNumber)
        print("\(fourNumber)")
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        let fiveNumber = numbers[5]
        groupNumbers.append(fiveNumber)
        print("\(fiveNumber)")
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        let sixNumber = numbers[6]
        groupNumbers.append(sixNumber)
        print("\(sixNumber)")
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        let sevenNumber = numbers[7]
        groupNumbers.append(sevenNumber)
        print("\(sevenNumber)")
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        let eightNumber = numbers[8]
        groupNumbers.append(eightNumber)
        print("\(eightNumber)")
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        let nineNumber = numbers[9]
        groupNumbers.append(nineNumber)
        print("\(nineNumber)")
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
    }
    
}

