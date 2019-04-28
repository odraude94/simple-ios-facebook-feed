//
//  ViewController.swift
//  FacebookFeed
//
//  Created by Eduardo Martinez on 29/04/18.
//  Copyright © 2018 Eduardo Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tvPictures:UITableView!
    let images = ["montain","ice","rio"]
    let titles = ["La selva la candona","Iceberg en America","Rio grande del pantano"]
    let details = ["Run the app again, and it will look nothing has really changed. You are now using your bioLabel, but it’s just showing one line of text in each cell. ",
                   "Even though the number of lines is set to 0 and your constraints are properly configured so your bioLabel takes up the entire cell, it turns out table views need to be told to let Auto Layout drive the height of each cell.","Layout constraints and the contents of its cells to determine each cell’s height."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tvPictures.estimatedRowHeight = 89
        self.tvPictures.rowHeight = UITableViewAutomaticDimension
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTVCell", for: indexPath) as! ImagesTVCell
        cell.imvImage.image = UIImage(named:self.images[indexPath.row])
        cell.lblTitle.text = self.titles[indexPath.row]
        cell.lblDetail.text = self.details[indexPath.row]
        
        let ratio = (cell.imvImage.image?.size.width)! / (cell.imvImage.image?.size.height)!
        let newHeight = cell.imvImage.frame.width / ratio
        
        guard newHeight <= 1920 else {
            cell.imvHeight.constant = 1920
            view.layoutIfNeeded()
            return cell
        }
        
        cell.imvHeight.constant = newHeight
        view.layoutIfNeeded()
        
        return cell
    }
    
    
    
}

