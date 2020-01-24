//
//  SettingsViewController.swift
//  Just Tip
//
//  Created by Luis Ramos on 12/23/19.
//  Copyright © 2019 SMC Software. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configureUI()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Test button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTap))
        
        
        self.view.addSubview(button)
        
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button Tapped")
    }
    
    @objc func addTap() {
        print("Add")
        
    }
     /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func configureUI() {
        navigationItem.title = "Split by tabs"
    }

}
