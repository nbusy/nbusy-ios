import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var messageTextField: UITextField!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        // Handle the text field’s user input through delegate callbacks.
        messageTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if let message = textField.text where !message.isEmpty {
            // todo: send the message to server
            textField.text = ""
        }
    }

    // MARK: Actions
    
    @IBAction func sendMessage(sender: UIButton) {
        if let messageTextField = self.messageTextField {
            if let message = messageTextField.text where !message.isEmpty {
                // todo: send the message to server
                messageTextField.text = ""
            }
        }
    }
    
}

