//
//  ViewController.swift
//  XyloPhone
//
//  Created by Çiğdem Alan on 12.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    
    
    var player : AVAudioPlayer!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 35
        button2.layer.cornerRadius = 35
        button3.layer.cornerRadius = 35
    }
    
   
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        playSound(animals: sender.titleLabel!.text ?? " Error ")
        
        
        sender.alpha = 0.3
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            
            sender.alpha = 1.0
        }
        
        
        
            
        }
    
    
    
    
        
        func playSound(animals : String){
            
            let url = Bundle.main.url(forResource: animals, withExtension: "mp3")
            
            
            
            do {
                
                player = try! AVAudioPlayer(contentsOf: url! )
                player.play()
                
                
            } catch {
                
                print("error!")
            }
            
            
            
            
            
        }
        
        
    }
    

