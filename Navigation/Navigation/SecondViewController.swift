//
//  SecondViewController.swift
//  Navigation
//
//  Created by Viktoriya on 3.10.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var rextLabel: UILabel!
    
    var text: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        rextLabel.text = text

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

}
