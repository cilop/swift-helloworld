//
//  FirstViewController.swift
//  helloworld
//
//  Created by Roberto Alvarez on 6/9/14.
//  Copyright (c) 2014 Roberto Alvarez. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textLbl: UITextField!
    @IBOutlet var pointLbl: UILabel!
    
    var points = 0
    
    func split (string: String) -> Character[] {
        
        var result:Character[] = []
        
        for letter in string {
            result.append(letter)
        }
        return result
    }
    
    func random (min:Int, max:Int) -> Int {
        return min + (Int(arc4random()) % (max - min))
    }
    
    func randomPos () -> Int[] {
        var result:Int[] = []
        
        let x = random(50, max: 250)
        let y = random(50, max: 350)
        result = [x, y, 100, 100]
    
        return result
    }
    
    func convertToCGFloat (a: Int) -> CGFloat {
        var test = [1,2,3,4,5]
        return CGFloat(a)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    @IBAction func btn_univ(sender: UIButton) {
        var ptsPosition = randomPos().map(convertToCGFloat)
        btn_nopts.frame = CGRectMake(ptsPosition[0], ptsPosition[1], ptsPosition[2], ptsPosition[3])
        ptsPosition = randomPos().map(convertToCGFloat)
        btn_pts.frame = CGRectMake(ptsPosition[0], ptsPosition[1], ptsPosition[2], ptsPosition[3])
        
        if sender == btn_nopts {
            println("No points for you")
        } else {
            println("Points for you")
        }
    }
    
    @IBOutlet var btn_nopts:UIButton!
    @IBOutlet var btn_pts:UIButton!
    
    func textFieldShouldReturn (textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    


}

