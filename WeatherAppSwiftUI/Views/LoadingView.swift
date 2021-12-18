//
//  LoadingView.swift
//  WeatherAppSwiftUI
//
//  Created by Ömer Faruk KÖSE on 18.12.2021.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint:.white))
            .frame(maxWidth: .infinity ,maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
