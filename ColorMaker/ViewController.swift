//
//  ViewController.swift
//  ColorMaker
//
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    
    @IBOutlet weak var redSliderControl: UISlider!
    @IBOutlet weak var greenSliderControl: UISlider!
    @IBOutlet weak var blueSliderControl: UISlider!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
    }
    
    @IBAction func changeColorComponent(sender: AnyObject) {
        let redColor: CGFloat = redControl.on ? 1 : 0
        let greenColor: CGFloat = greenControl.on ? 1 : 0
        let blueColor: CGFloat = blueControl.on ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }

    func sliderColors(sender: UISlider){
        let red = CGFloat(redSliderControl.value)
        let green = CGFloat(greenSliderControl.value)
        let blue = CGFloat(blueSliderControl.value)
        self.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
    }

    @IBAction func redSliderChanged(sender: UISlider)
    {
        sliderColors(sender)
        
    }
    
    @IBAction func greenSliderChanged(sender: UISlider){
        sliderColors(sender)
    }
    @IBAction func blueSliderChanged(sender: UISlider) {
        sliderColors(sender)
        
    }

}

