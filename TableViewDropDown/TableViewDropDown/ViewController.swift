import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ExpandableHeaderViewdelegate{
    
    
   
  var sections = [section(genre: "Vegitables",
        foods: ["Tomato","Onion","Brinjal","Beans"],exapnded: false),
                  section(genre: "Fruits",
            foods: ["Mango","Banana","Apple","Java"],
            exapnded: false),
            section(genre: "Non Veg",
            foods: ["Chicken","Mutton","Fish","Pork"],
            exapnded: false)
    ]

    @IBOutlet weak var tblText: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].foods.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
   //  return 100
    if (sections[indexPath.section].expanded) {
        return 100

    } else {
    return 50
    }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerValue = ExpandableHeaderView()
         headerValue.custominit(title: sections[section].genre, section:section, delegate: self)
        return headerValue
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier:"LabelCell")!
            cell.textLabel?.text = sections[indexPath.section].foods[indexPath.row]
            return cell
        }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        
        
        
    }
       
    }



