//
//  ListenNow.swift
//  PlayMusic
//
//  Created by user on 2022/03/24.
//

import SwiftUI

struct ListenNow: View {
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView{
            List{
                PageView()
                    .aspectRatio(3/2,contentMode: .fit)
                ContentRow()
                    .padding(.top)
                RecommendView()
                    .padding(.top)
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Listen Now")
            .toolbar{
                Button {
                    showingProfile.toggle()
                } label: {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
                
            }
            //showing like modal
            .sheet(isPresented: $showingProfile){
                
            }
        }
    }
}

struct ListenNow_Previews: PreviewProvider {
    static var previews: some View {
        ListenNow()
        
    }
}
