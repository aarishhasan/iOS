import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating {
    
    @IBOutlet weak var tableView: UITableView!
    
    var stocks: [Stock] = []
    var filteredStocks: [Stock] = []
    
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        configureSearchController()
        
        stocks = loadStocks() // Replace this with your method to load stocks
        filteredStocks = stocks
        tableView.reloadData()
    }
    
    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Stocks"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredStocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StockCell", for: indexPath)
        let stock = filteredStocks[indexPath.row]
        cell.textLabel?.text = stock.name
        cell.detailTextLabel?.text = stock.symbol
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text ?? ""
        if searchText.isEmpty {
            filteredStocks = stocks
        } else {
            filteredStocks = stocks.filter { stock in
                stock.name.lowercased().contains(searchText.lowercased()) || stock.symbol.lowercased().contains(searchText.lowercased())
            }
        }
        tableView.reloadData()
    }
    
    
    func loadStocks() -> [Stock] {
        let halalStocks = [
            Stock(name: "Reliance Industries", symbol: "RIL", isHalal: true),
            Stock(name: "TCS", symbol: "TCS", isHalal: true),
            Stock(name: "Hind Unilever", symbol: "HUL", isHalal: true),
            Stock(name: "ITC", symbol: "ITC", isHalal: true),
            Stock(name: "Infosys", symbol: "INFY", isHalal: true),
            Stock(name: "HCL Technologies", symbol: "HCLTECH", isHalal: true),
            Stock(name: "Asian Paints", symbol: "ASIANPAINT", isHalal: true),
            Stock(name: "Maruti Suzuki", symbol: "MARUTI", isHalal: true),
            Stock(name: "Titan Company", symbol: "TITAN", isHalal: true),
            Stock(name: "Avenue Supermart (DMart)", symbol: "DMART", isHalal: true),
            Stock(name: "Sun Pharma Industries", symbol: "SUNPHARMA", isHalal: true),
            Stock(name: "UltraTech Cement", symbol: "ULTRACEMCO", isHalal: true),
            Stock(name: "Adani Enterprises", symbol: "ADANIENT", isHalal: true),
            Stock(name: "Nestle India", symbol: "NESTLEIND", isHalal: true),
            Stock(name: "Wipro", symbol: "WIPRO", isHalal: true),
            Stock(name: "Adani Ports", symbol: "ADANIPORTS", isHalal: true),
            Stock(name: "Coal India", symbol: "COALINDIA", isHalal: true),
            Stock(name: "LTI Mindtree", symbol: "MINDTREE", isHalal: true),
            Stock(name: "Hindustan Zinc", symbol: "HINDZINC", isHalal: true),
            Stock(name: "Apollo Hospitals", symbol: "APOLLOHOSP", isHalal: true),
            Stock(name: "ICICI Pru Life", symbol: "ICICIPRULI", isHalal: true),
            Stock(name: "Berger Paints", symbol: "BERGEPAINT", isHalal: true),
            Stock(name: "Jindal Steel", symbol: "JINDALSTEL", isHalal: true),
            Stock(name: "TVS Motor Co.", symbol: "TVSMOTOR", isHalal: true),
            Stock(name: "Siemens", symbol: "SIEMENS", isHalal: true),
            Stock(name: "Bajaj Auto", symbol: "BAJAJ-AUTO", isHalal: true),
            Stock(name: "Pidilite Inds.", symbol: "PIDILITIND", isHalal: true),
            Stock(name: "HDFC Life Insur.", symbol: "HDFCLIFE", isHalal: true),
            Stock(name: "SBI Life Insuran", symbol: "SBILIFE", isHalal: true),
            Stock(name: "Britannia Inds.", symbol: "BRITANNIA", isHalal: true),
            Stock(name: "Tech Mahindra", symbol: "TECHM", isHalal: true),
            Stock(name: "Hind.Aeronautics", symbol: "HAL", isHalal: true),
            Stock(name: "Godrej Consumer", symbol: "GODREJCP", isHalal: true),
            Stock(name: "Eicher Motors", symbol: "EICHERMOT", isHalal: true),
            Stock(name: "Adani Total Gas", symbol: "ATGL", isHalal: true),
            Stock(name: "Dabur India", symbol: "DABUR", isHalal: true),
            Stock(name: "Divi's Lab.", symbol: "DIVISLAB", isHalal: true),
            Stock(name: "Shree Cement", symbol: "SHREECEM", isHalal: true),
            Stock(name: "Dr Reddy's Labs", symbol: "DRREDDY", isHalal: true),
            Stock(name: "Ambuja Cements", symbol: "AMBUJACEM", isHalal: true),
            Stock(name: "ABB", symbol: "ABB", isHalal: true),
            Stock(name: "Bharat Electron", symbol: "BEL", isHalal: true),
            Stock(name: "Havells India", symbol: "HAVELLS", isHalal: true),
            Stock(name: "Cipla", symbol: "CIPLA", isHalal: true),
            Stock(name: "SRF", symbol: "SRF", isHalal: true),
            Stock(name: "Tata Consumer", symbol: "TATACONSUM", isHalal: true),
            Stock(name: "GAIL (India)", symbol: "GAIL", isHalal: true),
            Stock(name: "Marico", symbol: "MARICO", isHalal: true)
        ]
        
        let haramStocks = [
            Stock(name: "United Breweries", symbol: "UBL", isHalal: false),
            Stock(name: "Radico Khaitan", symbol: "RADICO", isHalal: false),
            Stock(name: "VST Industries", symbol: "VSTIND", isHalal: false),
            Stock(name: "Godfrey Phillips India", symbol: "GODFRYPHLP", isHalal: false),
            Stock(name: "ITC Limited", symbol: "ITC", isHalal: false),
            Stock(name: "McLeod Russel India", symbol: "MCLEODRUSS", isHalal: false),
            Stock(name: "Dewan Housing Finance Corporation", symbol: "DHFL", isHalal: false),
            Stock(name: "Manappuram Finance", symbol: "MANAPPURAM", isHalal: false),
            Stock(name: "Muthoot Finance", symbol: "MUTHOOTFIN", isHalal: false),
            Stock(name: "Shriram Transport Finance", symbol: "SRTRANSFIN", isHalal: false),
            Stock(name: "Sun TV Network", symbol: "SUNTV", isHalal: false),
            Stock(name: "Zee Entertainment Enterprises", symbol: "ZEEL", isHalal: false),
            Stock(name: "PVR Limited", symbol: "PVR", isHalal: false),
            Stock(name: "Dish TV India", symbol: "DISHTV", isHalal: false),
            Stock(name: "Apollo Hospitals Enterprise", symbol: "APOLLOHOSP", isHalal: false),
            Stock(name: "Fortis Healthcare", symbol: "FORTIS", isHalal: false),
            Stock(name: "Lupin Limited", symbol: "LUPIN", isHalal: false),
            Stock(name: "Cadila Healthcare Limited", symbol: "CADILAHC", isHalal: false),
            Stock(name: "Dr. Lal PathLabs", symbol: "LALPATHLAB", isHalal: false),
            Stock(name: "Cipla Limited", symbol: "CIPLA", isHalal: false)
        ]
        
        return halalStocks + haramStocks
    }
}



