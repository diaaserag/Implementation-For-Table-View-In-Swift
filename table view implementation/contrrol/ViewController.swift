//
//  ViewController.swift
//  table view implementation
//
//  Created by diaa on 08/08/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var arrOfProducts = [data]()
    var e = true
    @IBOutlet weak var tableProduct: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableProduct.delegate = self
        tableProduct.dataSource = self
        
        
        arrOfProducts.append(data(imag: UIImage(named: "1")!, name: "Lenovo Ideapad L340-15IRH Gaming Laptop - Intel Core i7-9750H, 15.6", buyer: "Seller : Diaa Serag", price: 15.399))
        
        arrOfProducts.append(data(imag: UIImage(named: "2")!, name: "Lenovo Yoga 9 14ITL5 Laptop - Intel Core i7-1185G7, 14 Inch UHD, 1TB", buyer: "Seller : Diaa Serag", price: 31.999))
        
        arrOfProducts.append(data(imag: UIImage(named: "3")!, name: "Dell Inspiron 5406 2-in-1 Laptop - 11th Generation Intel Core i3-", buyer: "Seller : Diaa Serag", price: 10.699))
        
        arrOfProducts.append(data(imag: UIImage(named: "4")!, name: "HP 250 G7 Laptop, 10th Generation Intel Core i7-1065G7, 8 GB RAM, 1TB", buyer: "Seller : Diaa Serag", price: 11.777))
        
        arrOfProducts.append(data(imag: UIImage(named: "5")!, name: "Dell G5 15-5500 Gaming laptop - Intel 10th Gen Core i7-10750H, 16GB,", buyer: "Seller : Diaa Serag", price: 21.999))
        
        arrOfProducts.append(data(imag: UIImage(named: "6")!, name: "HP ENVY 13-ba0012ne Laptop - Intel 10th Core i7-10510U, 16 GB , 512 GB", buyer: "Seller : Diaa Serag", price: 19.499))
        
        arrOfProducts.append(data(imag: UIImage(named: "7")!, name: "Dell Latitude 5400 Laptop - Intel Core i7-8665U, 8 GB RAM, 1 TB HDD, 14", buyer: "Seller : Diaa Serag", price: 16.999))
        
        arrOfProducts.append(data(imag: UIImage(named: "8")!, name: "Dell Latitude 5400 Laptop - Intel Core i7-8665U, 8 GB RAM, 1 TB HDD, 14", buyer: "Seller : Diaa Serag", price: 16.999))
    }
       
    //MARK:- IMPLEMENT TABLE
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfProducts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableProduct.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)as? TableViewCell else{
            fatalError("chek your cell for row again")
        }
        let dataa = arrOfProducts[indexPath.row]
        
        //MARK:- BUTTON LOVE
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        cell.doneButtonAction = {
            self.arrOfProducts[indexPath.row].isComplete.toggle()
            self.tableProduct.reloadRows(at: [indexPath], with: .none)
        }
        let image = dataa.isComplete ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        cell.love.setBackgroundImage(image, for: .normal)

    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        
        
        
        //MARK:- INCREES OR DECREES
        
        cell.donedecres = {
            self.arrOfProducts[indexPath.row].count -= 1
            self.tableProduct.reloadRows(at: [indexPath], with: .none)
        }
        
        
        
        cell.doneincres = {
            self.arrOfProducts[indexPath.row].count += 1
            self.tableProduct.reloadRows(at: [indexPath], with: .none)
        }
       
         let c = self.arrOfProducts[indexPath.row].count
        cell.lablCount.text = "\(c)"
        
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        
        
        
        
        cell.imagProduct.image = dataa.imagP
        cell.lablProductName.text = dataa.nameP
        cell.lablBuyer.text = dataa.buyerN
        cell.lablPrice.text = "\(dataa.priceP) EGP"
        return cell
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 185
        
    }
    
}

