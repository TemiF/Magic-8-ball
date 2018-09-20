//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Temitope Fasuba on 2018-09-13.
//  Copyright © 2018 Temitope Fasuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    let imageArray = ["ball1" , "ball2" , "ball3" , "ball4", "ball5"]

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateballView()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
        // Dispose of any resources that can be recreated.
    }
 
    
    
    @IBAction func askButton(_ sender: Any) {
    
        updateballView()
    
    }
            
    func updateballView(){
        randomBallNumber = Int(arc4random_uniform(5))
       imageView.image = UIImage(named: imageArray[randomBallNumber])
        
       
}
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    updateballView()
    }
    
}
