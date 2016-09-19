//
//  MusicVC.swift
//  SeguesExamples
//
//  Created by MARTIN JUDE on 9/9/16.
//  Copyright © 2016 MARTINJUDE. All rights reserved.
//

import UIKit

class MusicVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }
    // linking from the selected button
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Play song with my heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    // go back to the original screen
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as?
            PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
