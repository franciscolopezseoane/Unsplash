//
//  SearchViewController.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBOutlet weak var buttonTap: UIButton!
    
    @IBAction func searchButton(_ sender: Any) {
        //print("mande una busqueda")
        if searchTextField.text != ""{
        if let destination = storyboard?.instantiateViewController(withIdentifier: "initialView") as? PhotoTableViewController{
            destination.query = searchTextField.text
            destination.searchNameTxtField = searchTextField.text!
            print("mando el titulo buscado")
            navigationController?.pushViewController(destination, animated: true)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonTap.layer.cornerRadius = 10
    
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? PhotoTableViewController{
//            destination.query = searchTextField.text
//            destination.searchNameTxtField = searchTextField.text!
//            print("mando el titulo buscado")
//            }
//        }
    }

