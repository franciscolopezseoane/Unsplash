//
//  PhotoTableViewController.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import UIKit

class PhotoTableViewController: UITableViewController {
    
    var query: String?
    var photo: [PhotoResults] = []
    var searchNameTxtField = ""
    var userId: String = ""
    var stadisticsClass: [Stadistics] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //le pasamos el titulo
        self.title = "\(searchNameTxtField)"
        
        // instanciar un servicio
        let service = PhotoService()
        service.search(query: query!) { (photoResults) in
            print("estoy configurando la vista con el photoservice en viewController")
            self.photo = photoResults
            self.tableView.reloadData()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath)

        if let photoCell = cell as? PhotosTableViewCell {
            photoCell.setup(photoResults: photo[indexPath.row])
        }

        if indexPath.row == photo.count - 5 {
            print("estoy terminando mi listado, cargo unas mas")
            loadNextPage()
        }
        return cell
    }
    
    private func loadNextPage(){
        let service = PhotoService()
        service.search(query: query!, page: photo.count) { (photoresults) in
            self.photo.append(contentsOf: photoresults)
            self.tableView.reloadData()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PhotoDetailViewController {
            if let selectedRow = tableView.indexPathForSelectedRow {
                let selectedPhoto = photo[selectedRow.row]
                destination.photoResultsDetail = selectedPhoto
                destination.photoID = selectedPhoto.photoId
                destination.myPhotoTitle = selectedPhoto.user.username
            }
        }
    }
}
