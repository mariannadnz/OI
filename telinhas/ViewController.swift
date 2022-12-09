//
//  ViewController.swift
//  telinhas
//
//  Created by unicred on 08/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapNextViewController(_ sender: Any) {
        nextViewController()
    }
    
    func nextViewController () {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let secondViewController =
                mainStoryboard.instantiateViewController(withIdentifier:"SecondViewController") as? SecondViewController else  { print ("lalalallal")
            return
            
        }
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
