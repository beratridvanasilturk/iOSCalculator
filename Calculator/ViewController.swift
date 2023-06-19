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
            print("result number : \(resultNumber)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var numbers = [0,1,2,3,4,5,6,7,8,9]
    
    var firstNumber : Int = 0
    var secondNumber: Int = 0
    var resultNumber: Array<Int> = []
    var groupNumbers: Array<Int> = []
    var firstClick = 0
    var secondClick = 0
//    var islem = additionButton(ViewController)
    
    @IBAction func ceButton(_ sender: UIButton) {
        resultLabel.text = "0"
        resultNumber = []
        groupNumbers.removeAll()
        
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
        
        var additionResult: Array<Int> = []
        if firstClick == 1 {
            additionResult.append(firstNumber)
        } else {
            additionResult.append(secondNumber)
        }
        resultNumber = additionResult
        
        
//        if groupNumbers.count == 2 {
//            var additionResult = groupNumbers.first! + groupNumbers.last!
//            resultNumber = additionResult
            print("addition icindeki result number:", resultNumber)
//        }
        
      
        
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        resultLabel.text = "\(resultNumber)"
        print("equal buttondaki result number:", resultNumber)
    }
    
    
    @IBAction func zeroButton(_ sender: UIButton) {
        if firstClick == 0 {
            let zeroNumber = numbers[0]
            firstNumber = zeroNumber
//            groupNumbers.append(zeroNumber)
            firstClick += 1
        } else {
            let zeroNumber = numbers[0]
            secondNumber = zeroNumber
//            groupNumbers.append(zeroNumber)
        }
    }
    @IBAction func oneButton(_ sender: UIButton) {
        if firstClick == 0 {
            let oneNumber = numbers[1]
            firstNumber = oneNumber
//            groupNumbers.append(oneNumber)
            firstClick += 1
        } else {
            let oneNumber = numbers[1]
            secondNumber = oneNumber
//            groupNumbers.append(oneNumber)
        }
        
        
     
//        print("\(oneNumber)")
    }
    @IBAction func twoButton(_ sender: UIButton) {
        if firstClick == 0 {
            let twoNumber = numbers[2]
            firstNumber = twoNumber
//            groupNumbers.append(twoNumber)
            firstClick += 1
            print("\(twoNumber)")
        } else {
            let twoNumber = numbers[2]
            secondNumber = twoNumber
//            groupNumbers.append(twoNumber)
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

