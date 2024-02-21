//
//  ViewController.swift
//  TableViewapp
//
//  Created by user248010 on 2/19/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var team = ""
    var dr1 = ""
    var dr2 = ""
    
    var f1teams = [
        TableData(f1team: "Red Bull", driver1: "#1 Max Verstappen", driver2: "#11 Sergio Perez"),
        TableData(f1team: "Mercedes", driver1: "#44 Lewis Hamilton", driver2: "#63 George Russell"),
        TableData(f1team: "Ferrari", driver1: "#16 Charles Leclerc", driver2: "#55 Carlos Sainz"),
        TableData(f1team: "Mclaren", driver1: "#4 Lando Norris", driver2: "#81 Oscar Piastri"),
        TableData(f1team: "Alpine", driver1: "#10 Pierre Gasly", driver2: "#31 Esteban Ocon"),
        TableData(f1team: "Aston Martin", driver1: "#14 Fernando Alonso", driver2: "#18 Lance Stroll"),
        TableData(f1team: "Visa RB", driver1: "#3 Daniel Ricciardo", driver2: "#22 Yuki Tsunoda"),
        TableData(f1team: "Williams", driver1: "#2 Logan Sargeant", driver2: "#23 Alex Albon"),
        TableData(f1team: "Kick Sauber", driver1: "#24 Zhou Guanyu", driver2: "#77 Valterri Bottas"),
        TableData(f1team: "Haas", driver1: "#20 Kevin Magnussen", driver2: "#27 Nico Hulkenberg")]
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return f1teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamCell = tableView.dequeueReusableCell(withIdentifier: "f1cell 1", for: indexPath)
        var content = teamCell.defaultContentConfiguration()
        content.text = f1teams[indexPath.row].f1team
        teamCell.contentConfiguration = content
        return teamCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        team = f1teams[indexPath.row].f1team
        dr1 = f1teams[indexPath.row].driver1
        dr2 = f1teams[indexPath.row].driver2
        
        self.performSegue(withIdentifier: "displaySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "displaySegue")
        {
            let navigation = segue.destination as! NavigationViewController
            navigation.f1team = team
            navigation.driver1 = dr1
            navigation.driver2 = dr2
        }
    }
}

