//
//  ViewController.swift
//  testapp3
//
//  Created by Artem Lugynets on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBOutlet weak var textfromurl: UILabel!
    @IBAction func click(_ sender: UIButton) {
        let url = URL(string: "http://numbersapi.com/random/year")!
        var request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) {data, response, error in
        if (error != nil) {
            print("Server error is", error ?? "unknown")
            return
            }
            
        self.textfromurl.text = String(data: data!, encoding: String.Encoding.utf8)
        }.resume()
    }
    

}
