//
//  ViewController.swift
//  仿淘票票在线选座
//
//  Created by caimengnan on 2018/7/23.
//  Copyright © 2018年 frameworkdemo. All rights reserved.
//

import UIKit

let WIDTH = UIScreen.main.bounds.size.width
let HEIGHT = UIScreen.main.bounds.size.height

class ViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet var mainScrollView: UIScrollView!
    
    var subButton:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        subButton = UIButton(type: .custom)
        subButton?.frame = CGRect(x: 20, y: 20, width: 50, height: 50)
        subButton?.backgroundColor = .red
        mainScrollView.addSubview(subButton!)
        
        mainScrollView.delegate = self
        mainScrollView.contentSize = CGSize(width: WIDTH, height: HEIGHT)
        mainScrollView.isScrollEnabled = true
//        mainScrollView.zoom(to: CGRect(x: 0, y: 0, width: WIDTH*2, height: HEIGHT), animated: true)
        mainScrollView.maximumZoomScale = 2.0
        mainScrollView.minimumZoomScale = 0.5
    }
    
    
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        
    }
    
    //返回需要缩放的view
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subButton
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("\(scale)")
        scrollView.contentSize = CGSize(width: WIDTH * scale, height: HEIGHT * scale)
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

