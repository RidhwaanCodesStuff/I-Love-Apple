//
//  ViewController.swift
//  I Love Apple
//
//  Created by Ridhwaan Ahmed on 08/08/2020.
//  Copyright © 2020 Ridhwaan and Ahsan Programming Services. All rights reserved.
//
import AVFoundation
import UIKit
var buttonPressA = AVAudioPlayer()
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pressAudio = Bundle.main.path(forResource: "buttonPressed", ofType: "mp3")
        
        do {
            buttonPressA = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: pressAudio!))
        }
        catch{
            print(error)
        }
        
        
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        buttonPressA.play()
        print("I love Apple")
        
            let alertController = UIAlertController(title: "Extra Support Level", message:
                "To support Apple more, subscribe to Apple Arcade, TV+ and every other subscription they have that you don’t need. ", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))

            self.present(alertController, animated: true, completion: nil)
        }
    
    
    
    @IBAction func creditsPressed(_ sender: UIButton) {
    
        let alertController = UIAlertController(title: "Credits", message:
                     "Idea by @LinusTech | App created by @Ridhwaan001", preferredStyle: .alert)
                 alertController.addAction(UIAlertAction(title: "OK", style: .default))

                 self.present(alertController, animated: true, completion: nil)
        
    }
    
    



}
