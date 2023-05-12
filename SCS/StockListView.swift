import SwiftUI

struct StockListView: View {
    @State var stocks: [Stock] = [
        
        Stock(name: "Reliance Industries", isShariahCompliant: true),
            Stock(name: "TCS", isShariahCompliant: true),
            Stock(name: "Hind Unilever", isShariahCompliant: true),
            Stock(name: "ITC", isShariahCompliant: true),
            Stock(name: "Infosys", isShariahCompliant: true),
            Stock(name: "HCL Technologies", isShariahCompliant: true),
            Stock(name: "Asian Paints", isShariahCompliant: true),
            Stock(name: "Maruti Suzuki", isShariahCompliant: true),
            Stock(name: "Titan Company", isShariahCompliant: true),
            Stock(name: "Avenue Supermart (DMart)", isShariahCompliant: true),
            Stock(name: "Sun Pharma Industries", isShariahCompliant: true),
            Stock(name: "UltraTech Cement", isShariahCompliant: true),
            Stock(name: "Adani Enterprises", isShariahCompliant: true),
            Stock(name: "Nestle India", isShariahCompliant: true),
            Stock(name: "Wipro", isShariahCompliant: true),
            Stock(name: "Adani Ports", isShariahCompliant: true),
            Stock(name: "Coal India", isShariahCompliant: true),
            Stock(name: "LTI Mindtree", isShariahCompliant: true),
            Stock(name: "Hindustan Zinc", isShariahCompliant: true),
            Stock(name: "Apollo Hospitals", isShariahCompliant: true),
            Stock(name: "ICICI Pru Life", isShariahCompliant: true),
            Stock(name: "Berger Paints", isShariahCompliant: true),
            Stock(name: "Jindal Steel", isShariahCompliant: true),
            Stock(name: "TVS Motor Co.", isShariahCompliant: true),
            Stock(name: "Siemens", isShariahCompliant: true),
            Stock(name: "Bajaj Auto", isShariahCompliant: true),
            Stock(name: "Pidilite Inds.", isShariahCompliant: true),
            Stock(name: "United Breweries", isShariahCompliant: false),
            Stock(name: "Radico Khaitan", isShariahCompliant: false),
            Stock(name: "VST Industries", isShariahCompliant: false),
            Stock(name: "Godfrey Phillips India", isShariahCompliant: false),
            Stock(name: "ITC Limited", isShariahCompliant: false),
            Stock(name: "McLeod Russel India", isShariahCompliant: false),
            Stock(name: "Dewan Housing Finance Corporation", isShariahCompliant: false),
            Stock(name: "Manappuram Finance", isShariahCompliant: false),
            Stock(name: "Muthoot Finance", isShariahCompliant: false),
            Stock(name: "Shriram Transport Finance", isShariahCompliant: false)
    ]

    var body: some View {
        NavigationView {
            List(stocks) { stock in
                NavigationLink(destination: StockDetailView(stock: stock)) {
                    HStack {
                        Text(stock.name)
                            .font(.headline)
                        Spacer()
                        Text(stock.isShariahCompliant ? "Shariah-compliant" : "Non-compliant")
                            .font(.subheadline)
                            .foregroundColor(stock.isShariahCompliant ? .green : .red)
                    }
                    .padding()

                }
            }
            .navigationTitle("Stocks")
            .navigationBarItems(trailing:
                NavigationLink(destination: InformationView()) {
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.blue)
                }
            )
            .listStyle(InsetGroupedListStyle())
                    .background(Color.init(red: 62/255, green: 180/255, blue: 137/255))
        }
    }
}
