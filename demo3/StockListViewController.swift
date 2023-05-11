//
//  StockListViewController.swift
//  demo3
//
//  Created by Daniyal Irshad on 10/05/23.
//

import Foundation
import UIKit


class StockListViewController: UIViewController {
    
    var halalStocks: [Stock] = [
        Stock(name: "Reliance Industries", isHalal: true),
        Stock(name: "TCS", isHalal: true),
        Stock(name: "Hind Unilever", isHalal: true),
        Stock(name: "ITC", isHalal: true),
        Stock(name: "Infosys", isHalal: true),
        Stock(name: "HCL Technologies", isHalal: true),
        Stock(name: "Asian Paints", isHalal: true),
        Stock(name: "Maruti Suzuki", isHalal: true),
        Stock(name: "Titan Company", isHalal: true),
        Stock(name: "Avenue Supermart (DMart)", isHalal: true),
        Stock(name: "Sun Pharma Industries", isHalal: true),
        Stock(name: "UltraTech Cement", isHalal: true),
        Stock(name: "Adani Enterprises", isHalal: true),
        Stock(name: "Nestle India", isHalal: true),
        Stock(name: "Wipro", isHalal: true),
        Stock(name: "Adani Ports", isHalal: true),
        Stock(name: "Coal India", isHalal: true),
        Stock(name: "LTI Mindtree", isHalal: true),
        Stock(name: "Hindustan Zinc", isHalal: true),
        Stock(name: "Apollo Hospitals", isHalal: true),
        Stock(name: "ICICI Pru Life", isHalal: true),
        Stock(name: "Berger Paints", isHalal: true),
        Stock(name: "Jindal Steel", isHalal: true),
        Stock(name: "TVS Motor Co.", isHalal: true),
        Stock(name: "Siemens", isHalal: true),
        Stock(name: "Bajaj Auto", isHalal: true),
        Stock(name: "Pidilite Inds.", isHalal: true),
        Stock(name: "HDFC Life Insur.", isHalal: true),
        Stock(name: "SBI Life Insuran", isHalal: true),
        Stock(name: "Britannia Inds.", isHalal: true),
        Stock(name: "Tech Mahindra", isHalal: true),
        Stock(name: "Hind.Aeronautics", isHalal: true),
        Stock(name: "Godrej Consumer", isHalal: true),
        Stock(name: "Eicher Motors", isHalal: true),
        Stock(name: "Adani Total Gas", isHalal: true),
        Stock(name: "Dabur India", isHalal: true),
        Stock(name: "Divi's Lab.", isHalal: true),
        Stock(name: "Shree Cement", isHalal: true),
        Stock(name: "Dr Reddy's Labs", isHalal: true),
        Stock(name: "Ambuja Cements", isHalal: true),
        Stock(name: "ABB", isHalal: true),
        Stock(name: "Bharat Electron", isHalal: true),
        Stock(name: "Havells India", isHalal: true),
        Stock(name: "Cipla", isHalal: true),
        Stock(name: "SRF", isHalal: true),
        Stock(name: "Tata Consumer", isHalal: true),
        Stock(name: "GAIL (India)", isHalal: true),
        Stock(name: "Marico", isHalal: true)]
    
    var haramStocks: [Stock] = [
        Stock(name: "United Breweries", isHalal: false),
        Stock(name: "Radico Khaitan", isHalal: false),
        Stock(name: "VST Industries", isHalal: false),
        Stock(name: "Godfrey Phillips India", isHalal: false),
        Stock(name: "ITC Limited", isHalal: false),
        Stock(name: "McLeod Russel India", isHalal: false),
        Stock(name: "Dewan Housing Finance Corporation", isHalal: false),
        Stock(name: "Manappuram Finance", isHalal: false),
        Stock(name: "Muthoot Finance", isHalal: false),
        Stock(name: "Shriram Transport Finance", isHalal: false),
        Stock(name: "Sun TV Network", isHalal: false),
        Stock(name: "Zee Entertainment Enterprises", isHalal: false),
        Stock(name: "PVR Limited", isHalal: false),
        Stock(name: "Dish TV India", isHalal: false),
        Stock(name: "Apollo Hospitals Enterprise", isHalal: false),
        Stock(name: "Fortis Healthcare", isHalal: false),
        Stock(name: "Lupin Limited", isHalal: false),
        Stock(name: "Cadila Healthcare Limited", isHalal: false),
        Stock(name: "Dr. Lal PathLabs", isHalal: false),
        Stock(name: "Cipla Limited", isHalal: false)
    ]
    
    func searchStocks(query: String) -> [Stock] {
            let combinedStocks = halalStocks + haramStocks
            return combinedStocks.filter { stock in
                stock.name.lowercased().contains(query.lowercased())
            }
        }
}
