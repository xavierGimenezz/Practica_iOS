

import UIKit

class SplashViewController: UIViewController {

    private let SEGUE_TO_HOME = "SEGUE_FROM_SPLASH_TO_HOME"
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView?
    
    
    //MARK: funciones de la view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        activityIndicator?.startAnimating()
        
        navigationNext()
    }

    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        
    }
    
    
    // MARK: funciones privadas
    private func navigationNext() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)){ [weak self] in
            let storyboardHome = UIStoryboard(name: "Home",
                                              bundle: nil)
            if let destination = storyboardHome.instantiateInitialViewController(){
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
    }

}

