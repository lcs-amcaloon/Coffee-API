//
//  LoadingView.swift
//  Coffee API
//
//  Created by Angus McAloon on 2021-10-20.
//

import SwiftUI

struct LoadingView: View {
    
    let Text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Latest Comic")
    }
}
