//
//  ViewController.swift
//  Calculator
//
//  Created by Berat Rıdvan Asiltürk on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var numbers = [0,1,2,3,4,5,6,7,8,9]
    
    var firstNumber : Int = 0
    var secondNumber: Int = 0
    var resultNumber: Int = 0
    var groupNumbers: Array<Int> = []
    
    func addNumbers() {
        resultNumber = firstNumber + secondNumber
    }

    
    
    @IBAction func ceButton(_ sender: UIButton) {
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
        
        var additionResult = groupNumbers.first! + groupNumbers.last!
        additionResult = resultNumber
        
    }
    @IBAction func equalButton(_ sender: UIButton) {
        print(resultNumber)
    }
    @IBAction func zeroButton(_ sender: UIButton) {
        let zeroNumber = numbers[0]
        groupNumbers.append(zeroNumber)
        print("\(zeroNumber), \(groupNumbers)")
    }
    @IBAction func oneButton(_ sender: UIButton) {
        let oneNumber = numbers[1]
        print("\(oneNumber)")
    }
    @IBAction func twoButton(_ sender: UIButton) {
        let twoNumber = numbers[2]
        print("\(twoNumber)")
    }
    @IBAction func threeButton(_ sender: UIButton) {
        let threeNumber = numbers[3]
        print("\(threeNumber)")
    }
    @IBAction func fourButton(_ sender: UIButton) {
        let fourNumber = numbers[4]
        print("\(fourNumber)")
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        let fiveNumber = numbers[5]
        print("\(fiveNumber)")
    }
    @IBAction func sixButton(_ sender: UIButton) {
        let sixNumber = numbers[6]
        print("\(sixNumber)")
    }
    @IBAction func sevenButton(_ sender: UIButton) {
        let sevenNumber = numbers[7]
        print("\(sevenNumber)")
    }
    @IBAction func eightButton(_ sender: UIButton) {
        let eightNumber = numbers[8]
        print("\(eightNumber)")
    }
    @IBAction func nineButton(_ sender: UIButton) {
        let nineNumber = numbers[9]
        print("\(nineNumber)")
    }
    @IBAction func dotButton(_ sender: UIButton) {
    }
}

