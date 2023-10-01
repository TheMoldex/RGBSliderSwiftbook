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
    
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var green: UILabel!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - private properties
    private let randomRedFloat = Float.random(in: 0...1)
    private let randomGreenFloat = Float.random(in: 0...1)
    private let randomBlueFloat = Float.random(in: 0...1)
    
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
        changesView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(redSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
        changesView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
        changesView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    // MARK: - private methods
    private func settingStartView() {
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupLabelAndValue()
        changesView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}
// MARK: - extensionVC
extension ViewController {
    
    private func setupRedSlider() {
        redSlider.maximumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.setValue(randomRedFloat, animated: false)
    }
    
    private func setupGreenSlider() {
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.setValue(randomGreenFloat, animated: false)
    }
    
    private func setupBlueSlider() {
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueSlider.setValue(randomBlueFloat, animated: false)
    }
    
    private func setupLabelAndValue() {
        red.text = "Red: "
        green.text = "Green: "
        blue.text = "Blue: "
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", redSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
        red.textColor = .red
        green.textColor = .green
        blue.textColor = .blue
    }
}
