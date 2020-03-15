//
//  ViewController.swift
//  RockPaerScissors
//
//  Created by Hin Wong on 2/2/20.
//  Copyright © 2020 Hin Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var CPUImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    
    //Bad coding practice???
    
    @IBAction func rockButton(_ sender: Any) {
        //Shows rock image
        playerImage.image = UIImage(named: "Image1")
        
        // CPU generates random image
        let CPU = arc4random_uniform(3) + 1
        CPUImage.image = UIImage(named:"Image\(CPU)")
        
        // win/lose label
        if (playerImage.image == UIImage(named:"Image1")) && (CPUImage.image == UIImage(named: "Image2")) {
            label.text = "You lose"
        }
        else if (playerImage.image == UIImage(named:"Image1")) && (CPUImage.image == UIImage(named: "Image3")) {
            label.text = "You win"
        }
        else if (playerImage.image == UIImage(named:"Image1")) && (CPUImage.image == UIImage(named: "Image1")) {
            label.text = "Tie"
        }
    }
    
    @IBAction func paperButton(_ sender: Any) {
        //Shows paper image
        playerImage.image = UIImage(named: "Image2")
        
        let CPU = arc4random_uniform(3) + 1
        CPUImage.image = UIImage(named:"Image\(CPU)")
        
        if (playerImage.image == UIImage(named:"Image2")) && (CPUImage.image == UIImage(named: "Image1")) {
            label.text = "You win"
        }
        else if (playerImage.image == UIImage(named:"Image2")) && (CPUImage.image == UIImage(named: "Image3")) {
            label.text = "You lose"
        }
        else if (playerImage.image == UIImage(named:"Image2")) && (CPUImage.image == UIImage(named: "Image2")) {
            label.text = "Tie"
        }
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        // Shows scissors image
        playerImage.image = UIImage(named: "Image3")
        
        let CPU = arc4random_uniform(3) + 1
        CPUImage.image = UIImage(named:"Image\(CPU)")
        
        if (playerImage.image == UIImage(named:"Image3")) && (CPUImage.image == UIImage(named: "Image2")) {
                label.text = "You win"
            }
            else if (playerImage.image == UIImage(named:"Image3")) && (CPUImage.image == UIImage(named: "Image1")) {
                label.text = "You lose"
            }
            else if (playerImage.image == UIImage(named:"Image3")) && (CPUImage.image == UIImage(named: "Image3")) {
                label.text = "Tie"
            }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
