//
//  ViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 30.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changesView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .systemMint
        changesView.layer.cornerRadius = changesView.frame.width / 2
    }
}

