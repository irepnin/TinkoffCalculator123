//
//  ViewController.swift
//  TinkoffCalculator
//
//  Created by Иван on 14.07.2024.
//

import UIKit

enum CalculationError: Error {
    case dividedByZero
}

// запишем перечисление с операциями поддерживаемыми калькулятором
enum Operation: String {
    case add = "+"
    case substract = "-"
    case multiply = "x"
    case divide = "/"
    
    func calculate(_ number1: Double, _ number2: Double) throws -> Double {
        switch self {
        case .add:
            return number1 + number2
            
        case .substract:
            return number1 - number2
        
        case .multiply:
            return number1 * number2
            
        case .divide:
            if number2 == 0 {
                throw CalculationError.dividedByZero
            }
            
            return number1 / number2
        }
    }
}

// перечисление со связанным типом для хранения значений и операций в одном массиве
enum CalculationHistoryItem {
    case number(Double)
    case operation(Operation)
}

class ViewController: UIViewController {
    
    // заведение кнопок
    @IBOutlet weak var fraction: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var multiplication: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var erase: UIButton!
    @IBOutlet weak var plus: UIButton!
    
    // ввели панель вывода чисел
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        guard let buttonText = (sender as AnyObject).currentTitle else { return }
        
        if buttonText == "," && label.text?.contains(",") == true {
            return
        }
        
        if label.text == "0" {
            label.text = buttonText
        } else {
            label.text?.append(buttonText ?? "no text")
        }
    }
    
    @IBAction func operationButtonPressed(_ sender: Any) {
        guard 
            let buttonText = (sender as AnyObject).currentTitle,
            let buttonOperation = Operation(rawValue: buttonText ?? "no text")
            else { return }
        
        guard
            let labelText = label.text,
            let labelNumber = numberFormatter.number(from: labelText)?.doubleValue
            else { return }
        
        calculationHistory.append(.number(labelNumber))
        calculationHistory.append(.operation(buttonOperation))
        
        resetLabelText()
    }
    
    // для кнопки с
    @IBAction func clearButtonPressed() {
        calculationHistory.removeAll()
        
        resetLabelText()
    }
 
    // для кнопки =
    @IBAction func calculateButtonPressed() {
        guard
            let labelText = label.text,
            let labelNumber = numberFormatter.number(from: labelText)?.doubleValue
            else { return }
        
        calculationHistory.append(.number(labelNumber))
        
        do {
            let result = try calculate()
            
            label.text = numberFormatter.string(from: NSNumber(value: result))
        } catch {
            label.text = "Ошибка"
        }
        calculationHistory.removeAll()
    }
    
// массив для хранения истории вычислений
    var calculationHistory: [CalculationHistoryItem] = []
    
// для преобразования чисел в строку и наоборот
        lazy var numberFormatter: NumberFormatter = {
            let numberFormatter = NumberFormatter()
            
            numberFormatter.usesGroupingSeparator = false
            numberFormatter.locale = Locale(identifier: "ru_RU")
            numberFormatter.numberStyle = .decimal
            
            return numberFormatter
        }()
        
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            // присвоение значения и типа кнопкам
            fraction.setTitle(",", for: .normal)
            zero.setTitle("0", for: .normal)
            equals.setTitle("=", for: .normal)
            one.setTitle("1", for: .normal)
            two.setTitle("2", for: .normal)
            three.setTitle("3", for: .normal)
            four.setTitle("4", for: .normal)
            five.setTitle("5", for: .normal)
            six.setTitle("6", for: .normal)
            seven.setTitle("7", for: .normal)
            eight.setTitle("8", for: .normal)
            nine.setTitle("9", for: .normal)
            erase.setTitle("c", for: .normal)
            plus.setTitle("+", for: .normal)
            minus.setTitle("-", for: .normal)
            multiplication.setTitle("x", for: .normal)
            division.setTitle("/", for: .normal)
            
            // вызов метода после загрузки view
            resetLabelText()
        }
        
    func calculate() throws -> Double {
        guard case .number(let firstNumber) = calculationHistory[0] else { return 0 }
        
        var currentResult = firstNumber
        
        for index in stride(from: 1, to: calculationHistory.count - 1, by: 2) {
            guard
                case .operation(let operation) = calculationHistory[index],
                case .number(let number) = calculationHistory[index + 1]
                else { break }
            
            currentResult = try operation.calculate(currentResult, number)
        }
        
        return currentResult
    }
    
        // добавили метод позволяющий задавать значене лэйбел 0
        func resetLabelText() {
            label.text = "0"
        }
}

