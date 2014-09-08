//
//  ThrillistViewController.swift
//  wk1-fb
//
//  Created by Engly Chang on 9/5/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class ThrillistViewController: UIViewController, UIGestureRecognizerDelegate {

    
    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    
    @IBOutlet weak var commentField: UITextField!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var thrillistScrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    
    @IBAction func onCommentBtn(sender: AnyObject) {
        commentField.becomeFirstResponder()
    }
    
    @IBAction func onLikeBtn(sender: AnyObject) {
        likeBtn.selected = !likeBtn.selected
    }
    
    @IBAction func onCancelBtn(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thrillistScrollView.contentSize = CGSize(width:320, height: 1203+50)
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
    }

    /*
    override func viewDidAppear(animated: Bool) {
            super.viewDidAppear(animated)
            
            thrillistScrollView.contentInset.top = 0
            thrillistScrollView.contentInset.bottom = 0
            thrillistScrollView.scrollIndicatorInsets.top = 0
            thrillistScrollView.scrollIndicatorInsets.bottom = 0
            
            thrillistScrollView.sendSubviewToBack(imageView)
            
            NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardWillShowNotification, object: nil, queue: nil, usingBlock: { (notification: NSNotification!) -> Void in
                var userInfo = notification!.userInfo
                
                // Get the keyboard height and width from the notification
                // Size varies depending on OS, language, orientation
                var kbSize = (userInfo[UIKeyboardFrameBeginUserInfoKey] as NSValue).CGRectValue().size
                var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
                var animationDuration = durationValue.doubleValue
                var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
                var animationCurve = curveValue.integerValue
                
                UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
                    self.commentContainer.frame.origin.y = self.view.frame.size.height - kbSize.height - self.commentContainer.frame.size.height
                    }, completion: nil)
            })
            
            NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardWillHideNotification, object: nil, queue: nil, usingBlock: { (notification: NSNotification!) -> Void in
                var userInfo = notification!.userInfo
                
                // Get the keyboard height and width from the notification
                // Size varies depending on OS, language, orientation
                var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
                var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
                var animationDuration = durationValue.doubleValue
                var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
                var animationCurve = curveValue.integerValue
                
                UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
                    self.commentContainer.frame.origin.y = self.thrillistScrollView.frame.size.height + self.thrillistScrollView.frame.origin.y
                    }, completion: nil)
            })
        }
    */

        
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
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
