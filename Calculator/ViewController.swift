
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var firstNumber:Double?
    var currentOperator:String?

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func AC(_ sender: Any) {
        lblResult.text = "0"
        firstNumber = 0
    }

    func concatenate(initialText: String, character: String) -> String {
        if initialText == "0" {
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
        lblResult.text = concatenate(initialText: lblResult.text!, character: "0")
    }
    
    @IBAction func btnComma(_ sender: Any) {
        lblResult.text = concatenatePoint(initialText: lblResult.text!)
    }
    
    @IBAction func btn1(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "1")
    }
    
    @IBAction func btn2(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "2")
    }
    
    @IBAction func btn3(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "3")
    }
    
    @IBAction func btn4(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "4")
    }
    
    @IBAction func btn5(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "5")
    }
    
    @IBAction func btn6(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "6")
    }
    
    @IBAction func btn7(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "7")
    }
    
    @IBAction func btn8(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "8")
    }
    
    @IBAction func btn9(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "9")
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
        lblResult.text = "0"
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
        lblResult.text = "0"
    }
    @IBAction func btnMinus(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "-"
        lblResult.text = "0"
    }
    @IBAction func btnPlus(_ sender: Any) {
        firstNumber = Double(lblResult.text!)
        currentOperator = "+"
        lblResult.text = "0"
    }
}

