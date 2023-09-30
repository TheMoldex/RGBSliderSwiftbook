//
//  ViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 30.09.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var changesView: UIView!
    
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var green: UILabel!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        settingView()
    }
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .systemMint
        changesView.layer.cornerRadius = changesView.frame.width / 2
    }
    
    private func settingView() {
        red.text = "Red: "
        green.text = "Green: "
        blue.text = "Blue: "
    }
}

