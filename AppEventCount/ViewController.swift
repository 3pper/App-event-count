//
//  ViewController.swift
//  AppEventCount
//
//  Created by Egor on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var configurationForConnectingLabel: UILabel!
    @IBOutlet var willConnectToLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    
    var willConnectToCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForeground = 0
    var didEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.lounchCount) time(s)"
        configurationForConnectingLabel.text = "The App config for connect \(appDelegate.configurationForConnecting) time(s)"
        willConnectToLabel.text = "The App will connect \(willConnectToCount) time(s)"
        didBecomeActiveLabel.text = "The App did become active \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "The App will resign active \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The App will enter foreground \(willEnterForeground) time(s)"
        didEnterBackgroundLabel.text = "The App did enter background \(didEnterBackgroundCount) time(s)"
    }


}

