//
//  NavigationViewController.swift
//  TableViewapp
//
//  Created by user248010 on 2/20/24.
//

import UIKit




class NavigationViewController: UIViewController {

    var f1team = ""
    var driver1 = ""
    var driver2 = ""

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var f1driver2: UILabel!
    @IBOutlet weak var f1driver1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.image = UIImage(named: f1team)
        f1driver1.text = driver1
        f1driver2.text = driver2    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
