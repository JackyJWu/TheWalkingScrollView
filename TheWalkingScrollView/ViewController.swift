//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Jacky on 2018-01-06.
//  Copyright © 2018 Jacky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
//    let WIDTH: CGFloat = 22
    let WIDTH2: CGFloat = 240
    
    //let HEIGHT: CGFloat = 255
    let HEIGHT: CGFloat = 397
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //forloop to add images to subVIEWS
        //THEN GAVE IT A POSITION IN THE SCROLL VIEW
        for index in 1...5 {
            let img = UIImage(named: "\(index)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            //CONTENT SIZE, STUFF AND HOW LONG
            //imgView.frame = CGRect(-WIDTH + (WIDTH * CGFloat(index)), 196, WIDTH, HEIGHT)
            //Calculating its position by width using index
            imgView.frame = CGRect(x: (-WIDTH2 + (WIDTH2 * CGFloat(index))), y: 350, width: WIDTH2, height: HEIGHT)
            
        }
        //Size so it knows how far to scroll
        //scrollView.contentSize = CGSize(WIDTH * 5, scrollView.frame.size.height)
        //WIDTH OF CHAR * 5
        scrollView.contentSize = CGSize(width: (WIDTH2 * 5), height: (scrollView.frame.size.height))

        
    }



}

