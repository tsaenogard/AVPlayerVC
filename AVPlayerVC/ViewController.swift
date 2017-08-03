//
//  ViewController.swift
//  AVPlayerVC
//
//  Created by XCODE on 2017/5/19.
//  Copyright © 2017年 Gjun. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var playVC: AVPlayerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(frame: CGRect(x: 40, y: 200, width: UIScreen.main.bounds.width - 80, height: 40))
        button.setTitle("播放影片", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.layer.cornerRadius = 8.0
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 1.0
        button.addTarget(self, action: #selector(self.onButtonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    override var shouldAutorotate: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - selector
    func onButtonAction() {
        guard let path = Bundle.main.path(forResource: "video", ofType: "m4v") else { return }
        let url = URL(fileURLWithPath: path)
        self.playVC = AVPlayerViewController()
        self.playVC.player = AVPlayer(url: url)
        self.present(self.playVC, animated: true, completion: nil)
    }

}

