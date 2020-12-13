

import UIKit

class VillanoCellView: UITableViewCell{
    @IBOutlet var villanoImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var descripton: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
    override func prepareForReuse(){
        super.prepareForReuse()
        
        villanoImage?.image = nil
        name?.text = nil
        descripton?.text = nil
    }
    
    func configureViews(heroe: Heroe){
        villanoImage?.image = UIImage(named: heroe.image ?? "")
        name?.text = heroe.name
        descripton?.text = heroe.description
    }
}

