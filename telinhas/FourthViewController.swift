import UIKit

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
        nextViewController()
    }
    

    func nextViewController () {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let FifthViewController =
                mainStoryboard.instantiateViewController(withIdentifier:"FifthViewController") as? FifthViewController else  {print ("lalalallal")
            return
            
        }
        
        navigationController?.pushViewController(FifthViewController, animated: true)
    }
}




