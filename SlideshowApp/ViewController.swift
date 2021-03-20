//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鈴木　鳴菜 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var images: [UIImage] = [
        UIImage(named:"img1")!,
        UIImage(named:"img2")!,
        UIImage(named:"img3")!
    ]
    var imageIndex = 0
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @objc func updateTimer(_ timer: Timer) {
        
        self.timer_sec += 2.0
        
        self.timerLabel.text = String(format: "%.2f", self.timer_sec)
    }
    
    
    
    
    @IBAction func onNext(_ sender: Any) {
    
        
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
        
        
}
   
    @IBAction func onBack(_ sender: Any) {
    
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
}
    
        
    @IBAction func onPlayStop(_ sender: Any) {
    
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        
        
       
        onPlayStop.setTitle("停止", for: .normal)
        
    } else {
        
        self.timer.invalidete()
        
        self.timer = nil
        
        onPlayStop.setTitle("再生", for: .normal)
    }
}

    @objc func changeImage() {
        
        imageIndex += 1
        
        if (imageIndex == images.count) {
            
            imageIndex = 0
        }
        
        imageView.image = images[imageIndex]
    }
    
}
