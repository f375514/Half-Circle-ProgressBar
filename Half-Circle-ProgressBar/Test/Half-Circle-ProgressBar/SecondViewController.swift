//
//  ViewController.swift
//  Test
//
//  Created by Md Faysal Ahmed on 28/10/22.
//


import UIKit
import AVFoundation
import Photos
import MobileCoreServices

class SecondViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var like: UILabel!
    
    var profile = ""
    var img = UIImage()
    var likee = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.image = img
        profileName.text = profile
        like.text = likee
        
    }

}
