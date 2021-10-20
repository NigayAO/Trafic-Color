//
//  ViewController.swift
//  Trafic Color
//
//  Created by Alik Nigay on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var button: UIButton!
    
    var arrayOfColors: [UIView] = []
    var countOfPressed = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        redView.alpha = 0.3
        redView.layer.cornerRadius = 70
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = 70
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = 70
        button.layer.cornerRadius = 15
        
        button.setTitle("START", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        arrayOfColors.append(redView)
        arrayOfColors.append(yellowView)
        arrayOfColors.append(greenView)
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        button.setTitle("NEXT", for: .normal)
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        if countOfPressed < 3 {
            arrayOfColors[countOfPressed].alpha = 1
            countOfPressed += 1
        } else {
            countOfPressed = 0
            arrayOfColors[countOfPressed].alpha = 1
            countOfPressed += 1
        }
        
    }
    
}

