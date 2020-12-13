

import UIKit

class HeroeCellView: UITableViewCell{
    @IBOutlet var heroeImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var descripton: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
    override func prepareForReuse(){
        super.prepareForReuse()
        
        heroeImage?.image = nil
        name?.text = nil
        descripton?.text = nil
    }
    
    func configureViews(heroe: Heroe){
        heroeImage?.image = UIImage(named: heroe.image ?? "")
        name?.text = heroe.name
        descripton?.text = heroe.description
    }
}
