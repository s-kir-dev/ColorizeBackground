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
    
    var timer5 : Timer?
    
    var timer1 : Timer?
    
    var seconds = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        redButton.addTarget(self, action: #selector(redButtonPressed), for: .touchUpInside)
        greenButton.addTarget(self, action: #selector(greenButtonPressed), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(blueButtonPressed), for: .touchUpInside)
    }
    
    func makeTimer() {
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timer1Fired), userInfo: nil, repeats: true)
        timer5 = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerFired), userInfo: nil, repeats: false)
    }
    
    func updateLabel() {
        timerLabel.text = "\(seconds)"
    }
    
    @objc func timerFired() {
        seconds = 5
        updateLabel()
        view.backgroundColor = .systemGray3
        timer5?.invalidate()
        timer1?.invalidate()
    }
    
    @objc func redButtonPressed() {
        timer5?.invalidate()
        view.backgroundColor = .red
        makeTimer()
    }
    
    @objc func greenButtonPressed() {
        timer5?.invalidate()
        view.backgroundColor = .green
        makeTimer()
    }
    
    @objc func blueButtonPressed() {
        timer5?.invalidate()
        view.backgroundColor = .blue
        makeTimer()
    }
    
    @objc func timer1Fired() {
        seconds -= 1
        updateLabel()
    }
}

