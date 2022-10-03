//
//  ViewController.swift
//  Navigation
//
//  Created by Viktoriya on 3.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OpenButtenPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController") // будет храниться экран
        guard let secontViewController = destination as? SecondViewController else {
            return
        }//приведение типа
        secontViewController.text = textField.text //чтобы положить текст из textField
        
        present(destination, animated: true) // модальное представление
    }
    @IBAction func pushButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destionation = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        guard let thirdViewController = destionation as? ThirdViewController else { return }
        thirdViewController.text = textField.text
        thirdViewController.delegate = self
        navigationController?.pushViewController(destionation, animated: true)
        
        
    }
    
}
extension ViewController: ThirdViewControllerDelegate {
    func didPassData(text: String) {
        helloLabel.text = text
    }
}


