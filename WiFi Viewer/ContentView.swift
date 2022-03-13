//
//  ContentView.swift
//  WiFi Viewer
//
//  Created by Nikolay Botev on 3/13/22.
//

import SwiftUI

struct WiFiNetwork: Identifiable {
    let bssid: String
    let networkName: String
    let rssi: Int
    let channel: Int
    let channelWidth: Int
    let band: Int
    let id = UUID()
}

private var networks = [
    WiFiNetwork(bssid: "000", networkName: "Botevi", rssi: -40, channel: 12, channelWidth: 30, band: 24),
    WiFiNetwork(bssid: "001", networkName: "Ice Bear", rssi: -44, channel: 95, channelWidth: 30, band: 24)
]

struct ContentView: View {
    @State private var selectedNetworks = Set<WiFiNetwork.ID>()

    var body: some View {
        Table(networks, selection: $selectedNetworks) {
            TableColumn("BSSID") {
                Text("\($0.bssid)")
            }
            TableColumn("Network Name") {
                Text("\($0.networkName)")
            }
            TableColumn("Signal") {
                Text("\($0.rssi)")
            }
            TableColumn("Channel") {
                Text("\($0.channel)")
            }
            TableColumn("Channel Width") {
                Text("\($0.channelWidth) MHz")
            }
            TableColumn("Band") {
                Text("\($0.band)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
