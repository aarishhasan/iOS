import SwiftUI

struct StockDetailView: View {
    var stock: Stock

    var body: some View {
        VStack {
            Text(stock.name)
                .font(.largeTitle)
                .foregroundColor(.purple)
            Text(stock.isShariahCompliant ? "This is a Shariah-compliant stock." : "This stock is not Shariah-compliant.")
                .font(.body)
                .foregroundColor(stock.isShariahCompliant ? .green : .red)
                .padding()
        }
        .padding()

        .navigationTitle(stock.name)
    }
}
