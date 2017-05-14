//
//  musicList.swift
//  learnSegues
//
//  Created by Ben on 2017/5/14.
//  Copyright © 2017年 Boyce. All rights reserved.
//

import UIKit

class musicList: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    let songTitle: String = "All of me"
    
    @IBAction func NextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "playingSongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? playingSongVC {
            
            if let song = sender as? String {
                destination.selectSong = song
            }
        }
    }
}
