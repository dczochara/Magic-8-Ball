//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Dariusz Czochara on 25/09/2018.
//  Copyright © 2018 Dariusz Czochara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
    
}

