//
//  ViewController.swift
//  Coordinator
//
//  Created by Siddharth Kothari on 07/06/23.
//

import UIKit

class ViewController: UIViewController {
    weak var coordinator : MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func vc1Tapped(_ sender: Any) {
        coordinator?.moveToVC1()
    }
    
    @IBAction func vc2Tapped(_ sender: Any) {
        coordinator?.moveToVC2()
    }
}


extension ViewController : Storyboarded {}
