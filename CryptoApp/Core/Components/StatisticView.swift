//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Jai  on 18/09/23.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(stat.title)
            Text(stat2.value)
        }
        
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(stat: dev.stat1)
    }
}
