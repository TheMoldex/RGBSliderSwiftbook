//
//  ColorViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 19.10.2023.
//

import UIKit

class ColorViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sliderVC = segue.destination as? ViewController else { return }
        sliderVC.delegate = self
        sliderVC.viewColor = view.backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension ColorViewController: ViewControllerDelegate {
    func vcPushDoneButton(_ color: UIColor) {
        view.backgroundColor = color
    }
}
