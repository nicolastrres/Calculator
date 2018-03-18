
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func AC(_ sender: Any) {
        lblResult.text = "0"
    }
    func concatenate(initialText: String, character: String) -> String {
        if initialText == "0" {
            return character
        }
        return initialText + character
    }
    
    func concatenateComma(initialText: String) -> String {
        if !initialText.contains(",") {
            return initialText + ","
        }
        return initialText
    }
    
    @IBAction func btn0(_ sender: Any) {
        lblResult.text = concatenate(initialText: lblResult.text!, character: "0")
    }
    
    @IBAction func btnComma(_ sender: Any) {
        lblResult.text = concatenateComma(initialText: lblResult.text!)
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
    }
    @IBAction func btnPercentage(_ sender: Any) {
    }
    @IBAction func btnDivision(_ sender: Any) {
    }
    @IBAction func btnMultiplier(_ sender: Any) {
    }
    @IBAction func btnMinus(_ sender: Any) {
    }
    @IBAction func btnPlus(_ sender: Any) {
    }
    @IBOutlet weak var btnEqual: UIButton!
}

