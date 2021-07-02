//
//  ViewController.swift
//  SDK_test
//
//  Created by Slow Abra on 7/2/21.
//  Copyright © 2021 Slow Abra. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak  var touchLabel: UILabel!
    
    var touches = 0 {
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipCart  (emoji: String, button: UIButton) {
        if button.backgroundColor == #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1) {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.794291079, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
    }
   
    let emojiCollection: [String] = ["🔫", "⚰️", "☢️", "🤙🏻", "🗿"]
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        flipCart(emoji: emojiCollection[Int.random(in: 0...4)], button: sender)
    }
    
}
