//
//  ViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 30.09.2023.
//

import UIKit

final class SetupStartViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var changesView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - Public properties
    weak var delegate: SendColorDelegate!
    var viewColor: UIColor!
    // MARK: - overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        settingStartView()
    }
    
    override func viewWillLayoutSubviews() {
        changesView.layer.cornerRadius = changesView.frame.width / 2
    }
    
    // MARK: - IBActions
    @IBAction func setRGBSliders(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redValue.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenValue.text = String(format: "%.2f", greenSlider.value)
        default:
            blueValue.text = String(format: "%.2f", blueSlider.value)
        }
        setupBackgroundColor()
    }
    
    // MARK: - private methods
    private func settingStartView() {
        setupSlider(slider: redSlider,
                     color: .red,
                     rgbColor: Float(CIColor(color: viewColor).red))
        setupSlider(slider: greenSlider,
                     color: .green,
                     rgbColor: Float(CIColor(color: viewColor).green))
        setupSlider(slider: blueSlider,
                     color: .blue,
                     rgbColor: Float(CIColor(color: viewColor).blue))
        changesView.backgroundColor = viewColor
        setupLabelAndValue()
    }
    
    @IBAction func doneButtonPressed() {
        delegate.vcPushDoneButton(changesView.backgroundColor ?? UIColor.black)
        dismiss(animated: true)
    }
    
}
// MARK: - extensionVC
extension SetupStartViewController {
    private func setupSlider(slider: UISlider, color: UIColor, rgbColor: Float = 1) {
        slider.minimumTrackTintColor = color
        slider.thumbTintColor = color
        slider.value = rgbColor
    }
  
    private func setupLabelAndValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    private func setupBackgroundColor() {
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
