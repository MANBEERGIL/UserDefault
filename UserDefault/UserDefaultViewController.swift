//
//  ViewController.swift
//  UserDefault
//
//  Created by MANBEER KAUR on 2020-03-04.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        lblName.text = ""
    }

    @IBAction func btnSave(_ sender: UIButton) {
        UserDefaults.standard.set(txtName.text, forKey: "name")
    }
    
    @IBAction func btnFetch(_ sender: UIButton) {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        lblName.text = name
    }
    @IBAction func btnNext(_ sender: UIButton) {
        
    }
}

