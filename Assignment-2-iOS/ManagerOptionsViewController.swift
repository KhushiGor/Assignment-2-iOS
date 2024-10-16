//
//  ManagerOptionsViewController.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-16.
//

import UIKit

class ManagerOptionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backButton = .init(title: "cash Register App")
//        let backButton = UIBarButtonItem()
//        backButton.title = "Cash Register App" // Set your custom title here
//        navigationItem.backBarButtonItem = backButton
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var backButton: UINavigationItem!

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
