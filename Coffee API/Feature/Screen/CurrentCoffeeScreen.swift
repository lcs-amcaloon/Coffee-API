//
//  CurrentCoffeeScreen.swift
//  Coffee API
//
//  Created by Angus McAloon on 2021-10-20.
//

import SwiftUI

struct CurrentCoffeeScreen: View {
    
    @StateObject private var vm = CoffeeViewModelImplementation(
        service: CoffeeImplementation()
    )

    var body: some View {
        VStack(alignment: .center) {
            if vm.file.isEmpty {
                ProgressView()
            } else {
                // Show the last XKCDComic instance in the list from the view model
                CoffeeImageView(file: vm.file.last!)
            }
        }
        .padding()
        .task {
            // Wait for the currentComic to be retrieved from the API
            await vm.getLatestCoffee()
        }
    }
}

struct CurrentCoffeeScreen_Previews: PreviewProvider {
    static var previews: some View {
        CurrentCoffeeScreen()
    }
}
