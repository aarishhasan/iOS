import SwiftUI

struct InformationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("What is a Shariah-compliant Equity investment?")
                    .font(.body)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                Text("""
                Investments made in equity stocks, screened in accordance with Shariah principles under the guidelines of Shariah supervisory board are called Shariah-compliant equity investments.
                            
                            Such Shariah equity screening is used by Islamic equity fund managers to identify a list of Shariah permissible stocks to invest in, while managing a Shariah-compliant fund or portfolio of stocks.
                            
                            A Shariah-compliant fund needs to pass sector-based and accounting ratio screens.
                            
                            Some of the sector-based Shariah exclusions are:
                            
                            - Revenues from sales of Alcohol
                            - Pork
                            - Tobacco
                            - Gambling
                            - Pornography
                            - Conventional Financial Services
                            - Conventional Insurance
                            - Trading of Gold & Silver on deferred cash basis
                """)
                    .font(.body)
                    .foregroundColor(.white)
            }
            .padding()
        }
        .padding()
        .background(Color.init(red: 0.11, green: 0.11, blue: 0.11))
        .navigationTitle("Information")

    }

}
