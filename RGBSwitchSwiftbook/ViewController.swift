//
//  ViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 30.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var changesView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        settingStartView()
    }
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .systemMint
        changesView.layer.cornerRadius = changesView.frame.width / 2
    }
    
    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(redSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    // MARK: - private methods
    private func settingStartView() {
        setupSliders(slider: redSlider, color: .red)
        setupSliders(slider: greenSlider, color: .green)
        setupSliders(slider: blueSlider, color: .blue)
        setupLabelAndValue()
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
}
// MARK: - extensionVC
extension ViewController {
    private func setupSliders(slider: UISlider, color: UIColor) {
        slider.minimumTrackTintColor = color
        slider.thumbTintColor = color
        slider.setValue(0, animated: false)
    }
    
    private func setupLabelAndValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", redSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
}
