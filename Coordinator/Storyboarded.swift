//
//  Storyboarded.swift
//  Coordinator
//
//  Created by Siddharth Kothari on 07/06/23.
//

// to make VC easier to instantiate, to create VC from storyboard
import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

