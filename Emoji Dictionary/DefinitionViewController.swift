//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Bayard Junior on 23/01/17.
//  Copyright © 2017 Bayard Junior. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoria: UILabel!
    @IBOutlet weak var anoCriacao: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = emoji.stringEmoji
        categoria.text = emoji.categoriaEmoji
        anoCriacao.text = String(emoji.anoCriacao)
        definitionLabel.text = emoji.descricao
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
