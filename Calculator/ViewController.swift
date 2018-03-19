
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var firstNumber:Double?
    var currentOperator:String?
    var shouldClean:Bool = false

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func AC(_ sender: Any) {
        lblResult.text = "0"
        firstNumber = 0
    }

    func concatenate(initialText: String, character: String, clean: Bool) -> String {
        if initialText == "0" || clean {
            return character
        }
        return initialText + character
    }
    
    func concatenatePoint(initialText: String) -> String {
        if !initialText.contains(".") {
            return initialText + "."
        }
        return initialText
    }
    
    func concatenateSign(initialText: String) -> String {
        if initialText == "0" {
            return initialText
        }
        if initialText[initialText.startIndex] == "-" {
            return String(initialText.dropFirst())
        }
        return "-" + initialText
    }

    func percent(number: Double) -> Double {
        return number / 100
    }

    @IBAction func btn0(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "0", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btnComma(_ sender: Any) {
        lblResult.text = concatenatePoint(initialText: lblResult.text!)
    }
    
    @IBAction func btn1(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "1", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn2(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "2", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn3(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "3", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn4(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "4", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn5(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "5", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn6(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "6", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn7(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "7", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn8(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "8", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btn9(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "9", clean: shouldClean)
        shouldClean = false
    }
    
    @IBAction func btnPlusMinus(_ sender: Any) {
        lblResult.text = concatenateSign(initialText: lblResult.text!)
    }

    @IBAction func btnPercent(_ sender: Any) {
        lblResult.text = String(percent(number: Double(lblResult.text!)!))
    }

    @IBAction func btnDivision(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "/"
        shouldClean = true
    }

    func calculateOperation(first: Double, second: Double, op: String) -> Double {
        switch(op) {
        case "/":
            return first / second
        case "+":
            return first + second
        case "-":
            return first - second
        case "*":
            return first * second
        default:
            return first + second
        }
    }

    @IBAction func btnEqual(_ sender: Any) {
        if currentOperator != nil {
            lblResult.text = String(calculateOperation(first: firstNumber!, second: Double(lblResult.text!)!, op: currentOperator!))
        }
    }

    @IBAction func btnMultiplier(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "*"
        shouldClean = true
    }
    @IBAction func btnMinus(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "-"
        shouldClean = true
    }
    @IBAction func btnPlus(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "+"
        shouldClean = true
    }
}

