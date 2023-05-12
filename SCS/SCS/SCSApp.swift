import SwiftUI

@main
struct StocksApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(Color.init(red: 62/255, green: 180/255, blue: 137/255)) // Mint green color
        appearance.titleTextAttributes = [.foregroundColor: UIColor.cyan] // Cyan color for title

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
