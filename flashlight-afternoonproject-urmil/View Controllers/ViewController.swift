//
//  ViewController.swift
//  flashlight-afternoonproject-urmil
//
//  Created by Urmil Shah on 9/6/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    ///MARK: - IB Outlets
    
    
    @IBOutlet weak var ToggleButton: UIButton!
    
    
    ///MARK: - properties
    
    var state: Bool = false
    
    
    ///MARK: - Lifecycle Methods  printing the state
    override func viewDidLoad() {
        super.viewDidLoad()
        print(state)
    }
    
    ///MARK: - Actions
    
    
    @IBAction func ButtonTapped(_ sender: Any) {
        state = !state
        print("the state of the application is \(state)")
        
        if state {
            view.backgroundColor = .white
            ToggleButton.setTitle("OFF", for: .normal)
            ToggleButton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = .black
            ToggleButton.setTitle("ON", for: .normal)
            ToggleButton.setTitleColor(.white, for: .normal)
        }
    }
    
}
