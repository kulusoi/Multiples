//
//  ViewController.swift
//  Multiples
//
//  Created by Jason Wang on 6/19/16.
//  Copyright © 2016 Jason&Friends. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startPoint = 0;
    var sum = 0;
    var count = 0;
    
    @IBOutlet weak var multipleLbl: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var inputTxt: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBAction func startTheGame(sender: UIButton!){
        
        if inputTxt.text != nil && inputTxt.text != ""{
            multipleLbl.hidden = true;
            playBtn.hidden = true;
            inputTxt.hidden = true;
            
            addBtn.hidden = false;
            resultLbl.hidden = false;
            
            startPoint = Int(inputTxt.text!)!;
        }
        
    }
    
    @IBAction func addingSum(sender: UIButton){
        if (count < 5){
            resultLbl.text = "\(sum) + \(startPoint) = \(sum + startPoint)";
            sum += startPoint;
            count += 1;
        }else{
            multipleLbl.hidden = false;
            playBtn.hidden = false;
            inputTxt.hidden = false;
            
            addBtn.hidden = true;
            resultLbl.hidden = true;
            
            sum = 0;
            startPoint = 0;
            count = 0;
            resultLbl.text = "Press Added to add!";
            inputTxt.text = "";
        }
        
    }
}

