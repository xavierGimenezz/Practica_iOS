
import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet var tableView: UITableView?
    
    private var heroes: Heroes = []
    private var villanos: Villanos = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = "Heroes"
        
        loadDataHeroe()
        tableView?.dataSource = self
        tableView?.delegate = self
        
    }
    
    private func loadDataHeroe() {
        heroes = [Heroe(image: "img_zenitsu",
                        name: "Zenitsu",
                        description: "es un lloron"),
                  Heroe(image: "img_inosuke",
                        name: "inosuke",
                        description: "hombre cerdo"),
                  Heroe(image: "img_Tanjiro",
                        name: "Tanjiro",
                        description: "el prota"),
                  Heroe(image: "img_Mitsuri",
                        name: "Mitsuri",
                        description: "la pilar del amor"),
                  Heroe(image: "img_AOI",
                        name: "Aoi",
                        description: "enfermera casa mariposa"),
                  Heroe(image: "img_Nezuko",
                        name: "Nezuko",
                        description: "Hermana del prota")]
    }
    
    func heroe(at indexPath: IndexPath) -> Heroe? {
        if (indexPath.row < heroes.count) {
            return heroes[indexPath.row]
        } else {
            return nil
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroeCellView", for: indexPath) as? HeroeCellView
        
        if(indexPath.row < heroes.count){
            cell?.configureViews(heroe: heroes[indexPath.row])
        }
        

        return cell ?? UITableViewCell()
     }
    
}
