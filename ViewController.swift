//
//  ViewController.swift
//  Unit 1
//
//  Created by Oluwasubomi Bashorun on 01/29/24.
//

import UIKit

class ViewController: UIViewController {
    // Create individual Desctiptions using Descript model
    let basics = Descript(title:"Backstory", image: UIImage(named: "jon snow")!, context: "Jon Snow, raised as an illegitimate son in House Stark of Winterfell, grapples with the challenges of his status. Instilled with a sense of duty and justice by his father, Ned Stark, Jon rises through the ranks of the Night's Watch, facing internal conflicts and external threats beyond the Wall. His journey unfolds in a world of political intrigue, family bonds, and the looming danger of the enigmatic White Walkers.")
    let hobbies = Descript(title:"Character", image: UIImage(named: "JON")!, context: "Jon's character is marked by a constant internal struggle – torn between his Stark identity, his loyalty to the Night's Watch, and the mysteries of his parentage. His journey is one of self-discovery, honor, and the weighty responsibilities that come with leadership in a world filled with political intrigue, betrayal, and supernatural threats.")
    let music = Descript(title:"Love life", image: UIImage(named: "J & D")!, context: "on Snow's love life in Game of Thrones revolves around his poignant romance with Ygritte, a wildling. Their love faces challenges due to their conflicting loyalties, culminating in tragedy. Later, Jon's relationships are further complicated by revelations about his lineage, impacting his connections, notably with Daenerys Targaryen.")
    
    //Array fro sorting
    var list: [Descript] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //storiing
        list = [basics, hobbies, music]
        
    }
    
    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.list = list[0]
            } else if tappedView.tag == 1 {
                detailViewController.list = list[1]
            } else if tappedView.tag == 2 {
                detailViewController.list = list[2]
            } else {
                print("no selection made.")
            }
        }
    }
    
}

