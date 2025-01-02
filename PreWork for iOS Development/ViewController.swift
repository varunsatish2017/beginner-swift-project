//
//  ViewController.swift
//  PreWork for iOS Development
//
//  Created by Varun Satishkumar on 12/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var collegeName: UILabel!
    @IBOutlet var careerName: UILabel!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton, forEvent event: UIEvent) {
        view.backgroundColor = changeColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        @State var _: Bool = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let newColor = changeColor()
        name.textColor = newColor
        careerName.textColor = newColor
        collegeName.textColor = newColor
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }


}

