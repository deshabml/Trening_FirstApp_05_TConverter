//
//  ViewController.swift
//  TConverter
//
//  Created by Лаборатория on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenlinusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperaturCelsius = Int(round(sender.value))
        cenlinusLabel.text = "\(temperaturCelsius)ºC"
        let temperaturFahreniet = temperaturCelsius * 9 / 5 + 32
        fahrenheitLabel.text = "\(temperaturFahreniet)ºF"
    }
    
}

