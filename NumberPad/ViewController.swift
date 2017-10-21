//
//  ViewController.swift
//  NumberPad(Swift programming practice game dev)
//
//  Created by Patrick C Diali on 12/10/2017.
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
    
    @IBOutlet weak var box12Label: UIButton!
    
    var scoreCounter: Int = 0
    var timer: Int = 60
    
    // image assets for buttons
    let star = UIImage(named: "star.png")
    let crown = UIImage(named: "crown.png")
    let lolly = UIImage(named: "lolly.png")
    
    func goAgain(){
        //reset variables etc
        
       displayLabel.text = ""
       scoreCounter = 0
       timer = 60
        displayTimer.textColor = UIColor.white
       displayTimer.text = "\(timer)"
        
        // buttons re-set
       box1Label.setTitle("0", for: UIControlState.normal)
        box1Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box1Label.setImage(nil, for: UIControlState.normal)
        box1Label.isEnabled = true
        if box1Label.backgroundColor == UIColor.red{
           box1Label.backgroundColor = UIColor.orange
        }
        
        box2Label.setTitle("0", for: UIControlState.normal)
        box2Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box2Label.setImage(nil, for: UIControlState.normal)
        box2Label.isEnabled = true
        if box2Label.backgroundColor == UIColor.red{
            box2Label.backgroundColor = UIColor.orange
        }
        
        box3Label.setTitle("0", for: UIControlState.normal)
        box3Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box3Label.setImage(nil, for: UIControlState.normal)
        box3Label.isEnabled = true
        if box3Label.backgroundColor == UIColor.red{
            box3Label.backgroundColor = UIColor.orange
        }
        
        box4Label.setTitle("0", for: UIControlState.normal)
        box4Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box4Label.setImage(nil, for: UIControlState.normal)
        box4Label.isEnabled = true
        if box4Label.backgroundColor == UIColor.red{
            box4Label.backgroundColor = UIColor.orange
        }
        
        box5Label.setTitle("0", for: UIControlState.normal)
        box5Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box5Label.setImage(nil, for: UIControlState.normal)
        box5Label.isEnabled = true
        if box5Label.backgroundColor == UIColor.red{
            box5Label.backgroundColor = UIColor.orange
        }
        
        box6Label.setTitle("0", for: UIControlState.normal)
        box6Label.setTitleColor(UIColor.black, for: UIControlState.normal)
        box6Label.setImage(nil, for: UIControlState.normal)
        box6Label.isEnabled = true
        if box6Label.backgroundColor == UIColor.red{
            box6Label.backgroundColor = UIColor.orange
        }
        
        //box7Label.setTitle("0", for: UIControlState.normal)
        box7Label.isEnabled = true
        if box7Label.backgroundColor == UIColor.red{
            box7Label.backgroundColor = UIColor.orange
        }
        
        //box8Label.setTitle("0", for: UIControlState.normal)
        box8Label.isEnabled = true
        if box8Label.backgroundColor == UIColor.red{
            box8Label.backgroundColor = UIColor.orange
        }
        
        //box9Label.setTitle("0", for: UIControlState.normal)
        box9Label.isEnabled = true
        if box9Label.backgroundColor == UIColor.red{
            box9Label.backgroundColor = UIColor.orange
        }
        
        //start game timer countdown
        gameTimer()
    }
    
    //handle game timer and time up alert/re-start
    func gameTimer(){
        if timer > 0 {
            timer = timer - 1
            displayTimer.text = "\(timer)"
        }
        if timer == 5{
            displayTimer.textColor = UIColor.red
            displayTimer.text = "\(timer)"
        }
        /*if timer == 0 {
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
        }*/
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
    
    @IBAction func aboutButton(_ sender: UIButton)
    {
        let alertController = UIAlertController(title: "About NumPad", message: "You have 60secs to score as many points as you can. Tap on any of the top 6 boxes to reveal a number or image. A star gives you 10points,a crown gives you 7points,a lolly gives 5points. Any number displayed is deducted from your score! Boxes with coloured images give and take more. Crown image gives 50points or takes 40points. Star image gives 100points or takes 90. Lolly: gives 30 or takes 20. Choose wisely. Are you ready?", preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
            //print(“Cancel”)
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            self.goAgain()
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    //check time left
    func checkTime()
    {
    if timer < 1 {
        displayTimer.text = "Time Up"
    box1Label.isEnabled = false
    box2Label.isEnabled = false
    box3Label.isEnabled = false
    box4Label.isEnabled = false
    box5Label.isEnabled = false
    box6Label.isEnabled = false
    box7Label.isEnabled = false
    box8Label.isEnabled = false
    box9Label.isEnabled = false
                }
    }
    
//    @IBAction func box1Button(_ sender: UIButton)
//    {
//        let rand = Int(arc4random_uniform(11))
//       box1Label.setTitle(String(rand), for: UIControlState.normal)
//        
//        //time up,button disabled!
//        checkTime()
//        
//        if rand >= 5{
//          scoreCounter = scoreCounter + 2
//          displayLabel.text = "Score: \(scoreCounter)"
//        }
//        if rand < 5{
//          scoreCounter = scoreCounter - 1
//            if scoreCounter <= 0{ scoreCounter = 0 }
//            displayLabel.text = "Score: \(scoreCounter)"
//        }
//        if rand == 10{
//       self.box1Label.backgroundColor = UIColor.red
//       self.box1Label.setTitleColor(UIColor.white, for: UIControlState.normal)
//       self.box1Label.isEnabled = false
//        scoreCounter = scoreCounter - 4
//            if scoreCounter <= 0{ scoreCounter = 0 }
//         displayLabel.text = "Score: \(scoreCounter)"
//        }
//    }
    @IBAction func box1Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box1Label.setTitle(String(rand), for: UIControlState.normal)
        //scoreCounter = scoreCounter - 2
        //if scoreCounter <= 0{ scoreCounter = 0 }
        //displayLabel.text = "Score:\(scoreCounter)"
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box1Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            
            displayLabel.text = "Score: \(scoreCounter)"
            
        }
        else if rand == 7 {
            box1Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box1Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box1Label.setImage(nil, for: UIControlState.normal)
            box1Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter >= 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100 {
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
    }
    @IBAction func box2Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box2Label.setTitle(String(rand), for: UIControlState.normal)
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box2Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 7 {
            box2Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box2Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box2Label.setImage(nil, for: UIControlState.normal)
            box2Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    @IBAction func box3Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box3Label.setTitle(String(rand), for: UIControlState.normal)
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box3Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 7 {
            box3Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box3Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box3Label.setImage(nil, for: UIControlState.normal)
            box3Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
       
    }
    @IBAction func box4Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box4Label.setTitle(String(rand), for: UIControlState.normal)
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box4Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 7 {
            box4Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box4Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box4Label.setImage(nil, for: UIControlState.normal)
            box4Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    
    @IBAction func box5Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box5Label.setTitle(String(rand), for: UIControlState.normal)
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box5Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 7 {
            box5Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box5Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box5Label.setImage(nil, for: UIControlState.normal)
            box5Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    @IBAction func box6Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        box6Label.setTitle(String(rand), for: UIControlState.normal)
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            box6Label.setImage(#imageLiteral(resourceName: "star"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 10
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 7 {
            box6Label.setImage(#imageLiteral(resourceName: "crown"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 7
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        else if rand == 5{
            box6Label.setImage(#imageLiteral(resourceName: "lolly"), for: UIControlState.normal)
            scoreCounter = scoreCounter + 5
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }else {
            box6Label.setImage(nil, for: UIControlState.normal)
            box6Label.setTitle(String(rand), for: UIControlState.normal)
            scoreCounter = scoreCounter - rand
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score:\(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    @IBAction func box7Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            scoreCounter = scoreCounter + 50
            self.box7Label.backgroundColor = UIColor.red
            box7Label.isEnabled = false //disable star box
            displayLabel.text = "Crown!\(scoreCounter)"
        }
        if rand < 10{
            scoreCounter = scoreCounter - 40
            if scoreCounter <= 0{ scoreCounter = 0 }
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
       
    }
    @IBAction func box8Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10 {
            scoreCounter = scoreCounter + 100
            self.box8Label.backgroundColor = UIColor.red
            box8Label.isEnabled = false //disable star box
            displayLabel.text = "Star!\(scoreCounter)"
            displayLabel.textColor = UIColor.green
            //displayLabel.text = "Score: \(scoreCounter)"
        }
        if rand < 10{
            scoreCounter = scoreCounter - 90
            if scoreCounter <= 0{ scoreCounter = 0 }
            //displayLabel.text = "No Point!"
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    @IBAction func box9Button(_ sender: UIButton)
    {
        let rand = Int(arc4random_uniform(11))
        
        //time up,button disabled!
        checkTime()
        
        if rand == 10{
            scoreCounter = scoreCounter + 30
            self.box9Label.backgroundColor = UIColor.red
            box9Label.isEnabled = false //disable star box
            displayLabel.text = "Lolly!\(scoreCounter)"
        }
        if rand < 10{
            scoreCounter = scoreCounter - 20
            if scoreCounter <= 0{ scoreCounter = 0 }
            //displayLabel.text = "No Point!"
            displayLabel.text = "Score: \(scoreCounter)"
        }
        if scoreCounter > 100 {
            displayLabel.textColor = UIColor.green
        }
        if scoreCounter >= 50 && scoreCounter < 100{
            displayLabel.textColor = UIColor.yellow
        }
        if scoreCounter < 50 {
            displayLabel.textColor = UIColor.red
        }
        
    }
    
}// end of class

