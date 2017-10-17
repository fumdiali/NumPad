//
//  ViewController.swift
//  NumberPad
//
//  Created by Apple on 12/10/2017.
//  Copyright © 2017 Qilobyt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var displayTimer: UILabel!
    
    
    @IBOutlet weak var box1Label: UIButton!
    @IBOutlet weak var box2Label: UIButton!
    @IBOutlet weak var box3Label: UIButton!
    @IBOutlet weak var box4Label: UIButton!
    @IBOutlet weak var box5Label: UIButton!
    @IBOutlet weak var box6Label: UIButton!
    @IBOutlet weak var box7Label: UIButton!
    @IBOutlet weak var box8Label: UIButton!
    @IBOutlet weak var box9Label: UIButton!
    @IBOutlet weak var box10Label: UIButton!
    @IBOutlet weak var box11Label: UIButton!
    @IBOutlet weak var box12Label: UIButton!
    
    var scoreCounter: Int = 0
    var timer: Int = 20
    
    func goAgain(){
       displayLabel.text = ""
       scoreCounter = 0
       timer = 20
        displayTimer.textColor = UIColor.white
       displayTimer.text = "\(timer)"
       box1Label.setTitle("0", for: UIControlState.normal)
        box1Label.isEnabled = true
        if box1Label.backgroundColor == UIColor.red{
           box1Label.backgroundColor = UIColor.orange
        }
        
        box2Label.setTitle("0", for: UIControlState.normal)
        box2Label.isEnabled = true
        if box2Label.backgroundColor == UIColor.red{
            box2Label.backgroundColor = UIColor.orange
        }
        
        box3Label.setTitle("0", for: UIControlState.normal)
        box3Label.isEnabled = true
        if box3Label.backgroundColor == UIColor.red{
            box3Label.backgroundColor = UIColor.orange
        }
        
        box4Label.setTitle("0", for: UIControlState.normal)
        box4Label.isEnabled = true
        if box4Label.backgroundColor == UIColor.red{
            box4Label.backgroundColor = UIColor.orange
        }
        
        box5Label.setTitle("0", for: UIControlState.normal)
        box5Label.isEnabled = true
        if box5Label.backgroundColor == UIColor.red{
            box5Label.backgroundColor = UIColor.orange
        }
        
        box6Label.setTitle("0", for: UIControlState.normal)
        box6Label.isEnabled = true
        if box6Label.backgroundColor == UIColor.red{
            box6Label.backgroundColor = UIColor.orange
        }
        
        gameTimer()
    }
    
    func gameTimer(){
        if timer > 0 {
            timer = timer - 1
            displayTimer.text = "\(timer)"
        }
        if timer == 5{
            displayTimer.textColor = UIColor.red
            displayTimer.text = "\(timer)"
        }
        if timer == 0 {
            let alertController = UIAlertController(title: "Time Up!", message: "Do you wish to repeat this Level?", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "No", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
                  print("Game Over!")
            }
            let okAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
                  self.goAgain()
            }
            alertController.addAction(cancelAction)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.gameTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func box1Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
       box1Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
          scoreCounter = scoreCounter + 2
          displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
       self.box1Label.backgroundColor = UIColor.red
       self.box1Label.isEnabled = false
        scoreCounter = scoreCounter - 4
            if scoreCounter <= 0{ scoreCounter = 0 }
         displayLabel.text = "Score: \(scoreCounter)"
        }
        /*else if rand <= 3{
            box1Label.setTitle(String(rand), for: UIControlState.normal)
            box1Label.setTitleColor(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1), for: UIControlState.normal)
        }else{
            box1Label.setTitle(String(rand), for: UIControlState.normal)
            //box1Label.setTitleColor(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), for: UIControlState.normal)
        }*/
    }
    @IBAction func box2Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box2Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
            scoreCounter = scoreCounter + 2
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
          self.box2Label.backgroundColor = UIColor.red
          self.box2Label.isEnabled = false
          scoreCounter = scoreCounter - 4
            if scoreCounter <= 0{ scoreCounter = 0 }
          displayLabel.text = "Score: \(scoreCounter)"
        }
    }
    @IBAction func box3Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box3Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
            scoreCounter = scoreCounter + 2
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
          self.box3Label.backgroundColor = UIColor.red
          self.box3Label.isEnabled = false
          scoreCounter = scoreCounter - 4
            if scoreCounter <= 0{ scoreCounter = 0 }
          displayLabel.text = "Score: \(scoreCounter)"
        }
    }
    @IBAction func box4Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box4Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
            scoreCounter = scoreCounter + 2
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
            self.box4Label.backgroundColor = UIColor.red
            self.box4Label.isEnabled = false
            scoreCounter = scoreCounter - 4
              if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
    }
    
    @IBAction func box5Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box5Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
            scoreCounter = scoreCounter + 2
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
            self.box5Label.backgroundColor = UIColor.red
            self.box5Label.isEnabled = false
            scoreCounter = scoreCounter - 4
              if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
    }
    @IBAction func box6Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box6Label.setTitle(String(rand), for: UIControlState.normal)
        if rand >= 5{
            scoreCounter = scoreCounter + 2
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand == 10{
            self.box6Label.backgroundColor = UIColor.red
            self.box6Label.isEnabled = false
            scoreCounter = scoreCounter - 4
              if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
    }
    
    
    


}// end of class

