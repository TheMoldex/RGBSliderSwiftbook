//
//  ViewController.swift
//  RGBSwitchSwiftbook
//
//  Created by Денис Сташков on 30.09.2023.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func vcPushDoneButton(_ color: UIColor )
}

final class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var changesView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - Public properties
    weak var delegate: ViewControllerDelegate!
    var viewColor: UIColor!
    
    // MARK: - overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        settingStartView()
    }
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = UIColor.yellow
        changesView.layer.cornerRadius = changesView.frame.width / 2
    }
    
    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
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
        setupSliders(slider: redSlider, color: .red, rgbColor: Float(CIColor(color: viewColor).red))
        setupSliders(slider: greenSlider, color: .green, rgbColor: Float(CIColor(color: viewColor).green))
        setupSliders(slider: blueSlider, color: .blue, rgbColor: Float(CIColor(color: viewColor).blue))
        changesView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        setupLabelAndValue()
    }
    
    @IBAction func doneButtonPressed() {
        delegate.vcPushDoneButton(changesView.backgroundColor ?? UIColor.black)
        dismiss(animated: true)
    }
    
}
// MARK: - extensionVC
extension ViewController {
    private func setupSliders(slider: UISlider, color: UIColor, rgbColor: Float = 1) {
        slider.minimumTrackTintColor = color
        slider.thumbTintColor = color
        slider.value = rgbColor 
    }
  
    private func setupLabelAndValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
}
