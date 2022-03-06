//
//  ViewController.swift
//  RGBColorView
//
//  Created by Никита on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 30
    }
    
    private func changeColor() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func changeRGBColor() {
        changeColor()
    }
    
    @IBAction func changeRedValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func changeGreenValue() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func changeBlueValue() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
}

