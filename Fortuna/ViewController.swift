//
//  ViewController.swift
//  Fortuna
//
//  Created by phoenix on 10/28/14.
//  Copyright (c) 2014 phoenix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }
    @IBOutlet weak var quotationTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Hacking in Swift, since iOS"+"8")
        println("controller: \(self)")
        println("view: \(self.view)")
        println("view's frame: \(self.view.frame)")
        
        quotationTextView.editable = false
        quotationTextView.selectable = false
        
        displayRandomQuote()
        

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        println("awakeFromNib quotationTextView: \(quotationTextView)")
    }
    
    func displayRandomQuote(){
        
        let delegate = UIApplication.sharedApplication().delegate as AppDelegate;
        let positiveQuotes = delegate.positiveQuotes;
        let negativeQuotes = delegate.negativeQuotes;
        let allQuotes = positiveQuotes + negativeQuotes;
        let randomIndex = Int(arc4random_uniform(UInt32(allQuotes.count)))
        let quote = allQuotes[randomIndex]
        quotationTextView.text = quote;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

