//
//  ViewController.swift
//  DarkMode
//
//  Created by Italo Stuardo on 31/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setColorButton()
        
//        overrideUserInterfaceStyle = .light
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setColorButton()
    }
    
    func setColorButton() {
        let userInterfacesStyle = traitCollection.userInterfaceStyle
        
        if userInterfacesStyle == .dark {
            changeButton.tintColor = .white
        } else {
            changeButton.tintColor = .red
        }
    }
}

