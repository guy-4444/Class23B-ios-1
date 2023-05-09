import Foundation
import UIKit

class MemoryGameController: UIViewController {
    
    @IBOutlet weak var game_IMG_card: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hi Memory Game....")
    }
   

    @IBAction func leftClicked(_ sender: Any) {
        let cards = [#imageLiteral(resourceName: "d7"), #imageLiteral(resourceName: "h5"),]
        game_IMG_card.image = #imageLiteral(resourceName: "h5")
        
        //game_IMG_card.image = #imageLiteral(resourceName: "d7")
    }
    
    @IBAction func rightClicked(_ sender: Any) {
        game_IMG_card.image = UIImage(named: "d7")
    }
    
}
