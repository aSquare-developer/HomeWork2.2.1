//
//  ViewController.swift
//  HomeWork2.2.1
//
//  Created by Artur Anissimov on 21.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    
    @IBOutlet weak var redColorHSlider: UISlider!
    @IBOutlet weak var greenColorHSlider: UISlider!
    @IBOutlet weak var blueColorHSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        redColorHSlider.minimumTrackTintColor = .red
        greenColorHSlider.minimumTrackTintColor = .green
        blueColorHSlider.minimumTrackTintColor = .blue
        
        changeColor()
    }

    func changeColor() {
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redColorHSlider.value),
                                            green: CGFloat(greenColorHSlider.value),
                                            blue: CGFloat(blueColorHSlider.value),
                                            alpha: 1)
    }
    
    @IBAction func rgbSliderChanged() {
        redColorValueLabel.text = String(format: "%.2f", redColorHSlider.value)
        greenColorValueLabel.text = String(format: "%.2f", greenColorHSlider.value)
        blueColorValueLabel.text = String(format: "%.2f", blueColorHSlider.value)
        
        changeColor()
    }
    
    
}

