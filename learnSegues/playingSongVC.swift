//
//  playingSongVC.swift
//  learnSegues
//
//  Created by Ben on 2017/5/14.
//  Copyright © 2017年 Boyce. All rights reserved.
//

import UIKit

class playingSongVC: UIViewController {

    @IBOutlet weak var NameOfTheSong: UILabel!
    
    private var _selectSong: String!
    
    var selectSong: String {
        get {
            return _selectSong
        } set {
            _selectSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameOfTheSong.text = _selectSong
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
