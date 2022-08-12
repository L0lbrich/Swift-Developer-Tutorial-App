//
//  LandmarksList.swift
//  FirstProduct (iOS)
//
//  Created by Logan Olbrich on 8/8/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modeldata: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modeldata.landmarks.filter { landmark in
                         (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark:landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
            .environmentObject(ModelData())
    }
}
