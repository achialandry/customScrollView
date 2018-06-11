//
//  ViewController.swift
//  myScrollView
//
//  Created by Landry Achia Ndong on 2018-06-07.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseView = MyScrollView(frame: self.view.bounds)
        self.view.addSubview(baseView)
        
        
        let screenSize: CGRect = UIScreen.main.bounds
//        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
////        let mainView = baseView
//        print("\(screenSize.height), \(screenSize.width)")
//        baseView.addSubview(mainView)
        
        
        let redFrame = CGRect(x:20, y:20, width:100, height: 100)
        let redFrameView = UIView(frame:redFrame)
        redFrameView.backgroundColor = UIColor.red
        baseView.addSubview(redFrameView)
        
        //green frame
        let greenFrame = CGRect(x:150, y:150, width:150, height: 200)
        let greenFrameView = UIView(frame:greenFrame)
        greenFrameView.backgroundColor = UIColor.green
        baseView.addSubview(greenFrameView)
        
        //blue frame
        let blueFrame = CGRect(x:40, y:400, width:200, height: 150)
        let blueFrameView = UIView(frame:blueFrame)
        blueFrameView.backgroundColor = UIColor.blue
        baseView.addSubview(blueFrameView)
        
        //yellow frame
        let yellowFrame = CGRect(x:100, y:600, width:180, height: 150)
        let yellowFrameView = UIView(frame:yellowFrame)
        yellowFrameView.backgroundColor = UIColor.yellow
        baseView.addSubview(yellowFrameView)
        
        
       
        
    
        
    }

}

