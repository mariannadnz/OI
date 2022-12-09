import UIKit

class SecondViewController: UIViewController {
    
    var lolo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lolo = "oi"
    }
    
    @IBAction func Tap(_ sender: Any) {
        nextViewController()
    }
    
    func nextViewController() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let thirdViewController =
                mainStoryboard.instantiateViewController(withIdentifier:"ThirdViewController") as? ThirdViewController else  {
            print ("lalalallal")
            return
        }
        thirdViewController.receiveData(data: lolo ?? " " )
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}



