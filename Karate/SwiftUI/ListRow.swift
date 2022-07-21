//
//  CustomListRow.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/16/22.
//

import SwiftUI

//MARK: Data
enum SystemIcon:String, CaseIterable {
    case faceid
    case icloud
    case livephoto
    case message
    case video
    
    var sfSymbol: String {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .faceid:
            return "Face ID"
        case .icloud:
            return "iCloud"
        case .livephoto:
            return "Live Photos"
        case .message:
            return "Messages"
        case .video:
            return "FaceTime"
        }
    }
}


struct ListRow: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(SystemIcon.allCases, id: \.self) { data in
                    makeView(systemIcon: data)
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    
    
    private func makeView(systemIcon: SystemIcon) -> some View {
        HStack {
            Image(systemName: systemIcon.sfSymbol)
            Text(systemIcon.title)
        }
    }
}

struct CustomListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}

