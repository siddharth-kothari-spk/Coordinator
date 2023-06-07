//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Siddharth Kothari on 07/06/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func moveToVC1() {
        let vc = ViewController1.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func moveToVC2() {
        let vc = ViewController2.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
