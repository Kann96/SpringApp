//
//  ViewController.swift
//  SpringApp
//
//  Created by Анастасия Кучер on 27.07.2025.
//

import UIKit
import SpringAnimation

final class SpringViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var nextButton: SpringButton!
    
    private let animations = Animation.getAnimation()
    private var animationsIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard !animations.isEmpty else {return}
        
        let textButton = (animationsIndex + 1) % animations.count
        nextButton.setTitle(animations[textButton].animationsName, for: .normal)
        
        let textLabel = animations[animationsIndex]
        infoLabel.text = textLabel.animationsName
    }
        @IBAction func springAnimationButton(_ sender: SpringButton) {
        let currentAnimation = animations[animationsIndex]
        
        springAnimationView.animation = currentAnimation.animationsName
        
        springAnimationView.curve = currentAnimation.animationCurve
        springAnimationView.force = currentAnimation.animationForce
        springAnimationView.duration = currentAnimation.animationDuration
        springAnimationView.delay = currentAnimation.animationDelay
        springAnimationView.animate()
        
        infoLabel.text = currentAnimation.fullNameAnimations
            
        let nextIndex = (animationsIndex + 1) % animations.count
        
        sender.setTitle(animations[nextIndex].animationsName, for: .normal)
        sender.animate()
        
        animationsIndex = (animationsIndex + 1) % animations.count
    }
    
}

