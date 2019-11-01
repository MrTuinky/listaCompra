//
//  ViewController.swift
//  ListaCompra
//
//  Created by Carlos Hernández on 01/11/2019.
//  Copyright © 2019 Carlos Hernandez cascajares. All rights reserved.
//

import UIKit

import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }


}

