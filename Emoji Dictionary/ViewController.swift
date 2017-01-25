//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Bayard Junior on 23/01/17.
//  Copyright © 2017 Bayard Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        emojis = emojisMaker()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segueControl", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let DefVC = segue.destination as! DefinitionViewController
        DefVC.emoji = sender as! Emoji
        
    
    }
    
    func emojisMaker() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.descricao = "Sorriso"
        emoji1.categoriaEmoji = "Normal"
        emoji1.anoCriacao = 2000

        let emoji2 = Emoji()
        emoji2.stringEmoji = "👻"
        emoji2.descricao = "Fantasminha"
        emoji2.categoriaEmoji = "Outra"
        emoji2.anoCriacao = 2001
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.descricao = "Coco"
        emoji3.categoriaEmoji = "Teste"
        emoji3.anoCriacao = 2002
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😋"
        emoji4.descricao = "Linguinha"
        emoji4.categoriaEmoji = "Normal"
        emoji4.anoCriacao = 2003
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😏"
        emoji5.descricao = "Carinha Danadinha"
        emoji5.categoriaEmoji = "Normal"
        emoji5.anoCriacao = 2004
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👶🏻"
        emoji6.descricao = "Nenem"
        emoji6.categoriaEmoji = "Normal"
        emoji6.anoCriacao = 2005
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

