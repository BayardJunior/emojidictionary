//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Bayard Junior on 23/01/17.
//  Copyright © 2017 Bayard Junior. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = emoji
        
        if emoji=="👶🏻" {
            definitionLabel.text = "That's a baby!"
        };
        if emoji == "😏" {
            definitionLabel.text = "Trick face"
        };
        if emoji=="😋" {
            definitionLabel.text = "Delicious face"
        };
        if emoji == "💩" {
            definitionLabel.text = "poop"
        };
        if emoji=="👻" {
            definitionLabel.text = "Ghost"
        };
        if emoji == "😀" {
            definitionLabel.text = "Smile face"
        };
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
