//
//  ColorsTableVC.swift
//  Random Colors
//
//  Created by Ayush Desai on 7/12/24.
//
import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        randomColorEngine()
        // Do any additional setup after loading the view.
    }
    
    func randomColorEngine() {
        for _ in 0 ..< 50 {
            colors.append(randomColorGenerator())
        }
    }
    
    func randomColorGenerator() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ColorDetailVC,
           let color = sender as? UIColor {
            destVC.color = color
        }
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailVC", sender: selectedColor)
    }
}
