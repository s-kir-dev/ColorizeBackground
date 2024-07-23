//
//  ViewController.swift
//  Colorize
//
//  Created by Кирилл Сысоев on 23.07.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redButton.addTarget(self, action: #selector(redButtonPressed), for: .touchUpInside)
        greenButton.addTarget(self, action: #selector(greenButtonPressed), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(blueButtonPressed), for: .touchUpInside)
    }
    
    func makeTimer() {
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerFired), userInfo: nil, repeats: false)
    }
    
    @objc func timerFired() {
        view.backgroundColor = .systemGray3
        timer?.invalidate()
    }
    
    @objc func redButtonPressed() {
        timer?.invalidate()
        view.backgroundColor = .red
        makeTimer()
    }
    
    @objc func greenButtonPressed() {
        timer?.invalidate()
        view.backgroundColor = .green
        makeTimer()
    }
    
    @objc func blueButtonPressed() {
        timer?.invalidate()
        view.backgroundColor = .blue
        makeTimer()
    }
}

