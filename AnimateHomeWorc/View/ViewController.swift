//
//  ViewController.swift
//  AnimateHomeWorc
//
//  Created by Максим Гурков on 13.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var nameAnimation: UILabel!
    @IBOutlet weak var nameCurveLabel: UILabel!
    @IBOutlet weak var valueForceLabel: UILabel!
    @IBOutlet weak var valueDurationLabel: UILabel!
    @IBOutlet weak var valueDelayLabel: UILabel!
    
    @IBOutlet weak var startAnimation: UIButton!
    
    private var animations = Animation.animationModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        startAnimation.layer.cornerRadius = 10
        startAnimation.setTitle("Animation", for: .normal)
        
    }

    @IBAction func startAnimationButton(_ sender: Any) {
        getAnimation()
    }
    
    private func getAnimation() {
        
        let name = animations.animation
        
        animationView.animation = animations.animation
        animationView.curve = animations.curve
        animationView.delay = animations.delay
        animationView.force = animations.force
        animationView.duration = animations.duration
        animationView.animate()
        
        startAnimation.setTitle("Name \(name)", for: .normal)
        nameAnimation.text = "Name: \(name)"
        nameCurveLabel.text = "curve: \(animations.curve)"
        valueForceLabel.text = String("force: \(animations.force)")
        valueDelayLabel.text = String("delay: \(animations.delay)")
        valueDurationLabel.text = String("duration: \(animations.duration)")
        
        animations = Animation.animationModel
        
        startAnimation.setTitle(animations.animation, for: .normal)
    }
    
    
    
}

