
import UIKit

class VillanosViewController: UIViewController {

    @IBOutlet var tableView: UITableView?
    
    private var villanos: Villanos = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        loadDataVillanos()
        tableView?.dataSource = self
        tableView?.delegate = self
        
    }
    private func loadDataVillanos(){
        villanos = [Villano(image: "",
                            name: "aida",
                            description: "pesada"),
                    Villano(image: "",
                            name: "maria",
                            description: "hippie"),
                    Villano(image: "",
                            name: "",
                            description:""),
                    Villano(image: "",
                            name: "",
                            description:""),
                    Villano(image: "",
                            name: "",
                            description:""),
                    Villano(image: "",
                            name: "",
                            description:"")]
    }
    func villano(at indexPath: IndexPath) -> Villano? {
        if (indexPath.row < villanos.count) {
            return villanos[indexPath.row]
        } else {
            return nil
        }
    }
    
}

extension VillanosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villanos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VillanoCellView", for: indexPath) as? VillanoCellView
        
        if(indexPath.row < villanos.count) {
            cell?.configureViews(villano: villanos[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
    }
}
