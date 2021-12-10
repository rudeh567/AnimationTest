//
//  ViewController.swift
//  RotateTest
//
//  Created by yeoboya on 2021/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let testView1 = UIView(frame: CGRect(x: 100, y: 0, width: 10, height: view.frame.height))
        testView1.backgroundColor = .cyan
        view.addSubview(testView1)
        
        let testView2 = UIView(frame: CGRect(x: 200, y: 0, width: 10, height: view.frame.height))
        testView2.backgroundColor = .cyan
        view.addSubview(testView2)
        
        let testView3 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: view.frame.height))
        testView3.backgroundColor = .cyan
        view.addSubview(testView3)
        
        let testView4 = UIView(frame: CGRect(x: 300, y: 0, width: 10, height: view.frame.height))
        testView4.backgroundColor = .cyan
        view.addSubview(testView4)
        
        let testView5 = UIView(frame: CGRect(x: 400, y: 0, width: 10, height: view.frame.height))
        testView5.backgroundColor = .cyan
        view.addSubview(testView5)
        
        let testView6 = UIView(frame: CGRect(x: 500, y: 0, width: 10, height: view.frame.height))
        testView6.backgroundColor = .cyan
        view.addSubview(testView6)
        
    }

    @IBAction func animatePlay(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(pointMove), userInfo: nil, repeats: true)
    }
    
    @objc func pointMove() {
        let imageView = UIView(frame: CGRect(x: 300, y: self.view.frame.height - 100, width: 10, height: 10))
        imageView.backgroundColor = .systemIndigo
        self.view.addSubview(imageView)
        
        let startPoint = imageView.frame.origin.x
        let duration = 10.0

        let animator = UIViewPropertyAnimator(duration: duration, curve: .linear)
    
        animator.addAnimations {
            imageView.frame.origin = CGPoint(x: startPoint + 400, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint - 300, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.25)
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint + 200, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.5)
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint - 100, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.75)
        
        animator.startAnimation()
    }
    
    @IBAction func clik2(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(pointMove2), userInfo: nil, repeats: true)
    }
    
    @objc func pointMove2() {
        let imageView = UIView(frame: CGRect(x: 300, y: self.view.frame.height - 100, width: 10, height: 10))
        imageView.backgroundColor = .red
        self.view.addSubview(imageView)
        
        let startPoint = imageView.frame.origin.x
        let duration = 10.0

        let animator = UIViewPropertyAnimator(duration: duration, curve: .linear)
    
        animator.addAnimations {
            imageView.frame.origin = CGPoint(x: startPoint + 400, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint - 500, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.25)
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint + 300, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.5)
        animator.addAnimations({
            imageView.frame.origin = CGPoint(x: startPoint - 100, y: 0)
            print("x: \(imageView.frame.origin.x)")
        }, delayFactor: 0.75)
        
        animator.startAnimation()
    }
}

