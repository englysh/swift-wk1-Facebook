//
//  NewsfeedViewController.swift
//  wk1-fb
//
//  Created by Engly Chang on 9/5/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class NewsfeedViewController: UIViewController {


    @IBOutlet weak var FeedScrollView: UIScrollView!
    @IBOutlet weak var feedImg: UIImageView!
    
    override func viewDidLoad() {
        
        //FeedScrollView.contentSize = feedImg.image?.size

        
        FeedScrollView.contentSize = CGSize(width:320, height: 1025+46-22)

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
