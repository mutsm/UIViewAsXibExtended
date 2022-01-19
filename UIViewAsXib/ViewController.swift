//
//  ViewController.swift
//  UIViewAsXib
//
//  Created by MutasemW on 2022-01-19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ownView: MyOwnView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ownView.lbl.text = "Muti best programmer in his street"
        ownView.containerView.backgroundColor = .green
    }


}

