//
//  ThirdViewController.swift
//  telinhas
//
//  Created by unicred on 08/12/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapNextViewController(_ sender: Any) {
    nextViwewController()
    }
    
    
    
    func receiveData(data: String) {
        print(data, "kikiki")
        
        
    }
    
    func nextViwewController () {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let secondViewController =
                mainStoryboard.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController else  { print ("lalalalala")
            return
            
        }
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
