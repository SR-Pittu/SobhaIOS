//
//  AnimateViewController.swift
//  GroceryAppProject
//
//  Created by Pittu,Sobhareddy on 5/4/23.
//

import UIKit
import Lottie
class AnimateViewController: UIViewController {

    @IBOutlet weak var animationView: LottieAnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        self.animationView.animation = LottieAnimation.named("animate")
        self.animationView.backgroundColor = .clear
        self.animationView.loopMode = .playOnce
        self.animationView.play()
       // delegate?.taskCreated(taskName: a)
       // self.animationView.play(completion: .flatMap(T##self: Optional<LottieCompletionBlock>##Optional<LottieCompletionBlock>##(Bool) -> Void))
        self.animationView.play(completion: { (finished) in
            self.dismiss(animated: true)
            //TaskVC.viewWillAppear(self.delegate as! TaskVC)
            })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
