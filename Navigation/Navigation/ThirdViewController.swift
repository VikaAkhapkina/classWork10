//
//  ThirdViewController.swift
//  Navigation
//
//  Created by Viktoriya on 3.10.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String?
    weak var delegate: ThirdViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "How are you"
        textLabel.text = text
        self.navigationItem.setHidesBackButton(true, animated: true) // спрятать кнопку back

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func popButtonPressed(_ sender: Any) {
        delegate.didPassData(text: "fgdfskdjhgfldi")
        navigationController?.popViewController(animated: true)
    }
    
}
protocol ThirdViewControllerDelegate: AnyObject {
    func didPassData(text: String)
}
