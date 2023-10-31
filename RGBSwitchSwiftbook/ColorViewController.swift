//
//  ColorViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 19.10.2023.
//

import UIKit

protocol SendColorDelegate: AnyObject {
    func vcPushDoneButton(_ color: UIColor )
}

final class ColorViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sliderVC = segue.destination as? SetupStartViewController else { return }
        sliderVC.delegate = self
        sliderVC.viewColor = view.backgroundColor
    }
}

extension ColorViewController: SendColorDelegate {
    func vcPushDoneButton(_ color: UIColor) {
        view.backgroundColor = color
    }
}
