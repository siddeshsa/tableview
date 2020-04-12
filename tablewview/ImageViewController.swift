//
//  ImageViewController.swift
//  tablewview
//
//  Created by mac on 06/04/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var images:[Image]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArray()
        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Image]{
        var tempimages : [Image] = []
        
        let image1 = Image(image: #imageLiteral(resourceName: "first"), title: "my string here 1")
        let image2 = Image(image: #imageLiteral(resourceName: "fifth"), title: "my string here 2")
        let image3 = Image(image: #imageLiteral(resourceName: "sixth"), title: "my string here 33")
        let image4 = Image(image: #imageLiteral(resourceName: "second"), title: "my string here 4")
        let image5 = Image(image: #imageLiteral(resourceName: "fourth"), title: "my string here 5")
        let image6 = Image(image: #imageLiteral(resourceName: "fifth"), title: "my string here 6")
        let image7 = Image(image: #imageLiteral(resourceName: "third"), title: "my string here 7")
        
        tempimages.append(image1)
        tempimages.append(image2)
        tempimages.append(image3)
        tempimages.append(image4)
        tempimages.append(image5)
        tempimages.append(image6)
        tempimages.append(image7)
        
        return tempimages
    }
    

}

extension ImageViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageViewCell") as! ImageViewCell
        cell.setImages(imagee:image)
        
        return cell
        
    }
    
    
}
