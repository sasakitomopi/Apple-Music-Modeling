//
//  SearchBar.swift
//  PlayMusic
//
//  Created by user on 2022/03/27.
//

import SwiftUI

struct SearchBar: View {
    @EnvironmentObject var modelData : ModelData
    var body: some View {
        VStack(alignment: .center){
            NavigationView{
                List{
                    Section{
                        ForEach(modelData.result) { musics in
                            LibrarySource(music: musics)
                        }
                    }
                }
                .navigationTitle("Search")
                .onAppear(){
                    modelData.fetchFamilyNames()
                }
            }
            .searchable(text: $modelData.searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: Text("write your keywords"))
            .onSubmit(of: .search) {
                modelData.fetchFamilyNames()
            }
        }
    }
}
//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar()
//            .environmentObject(ModelData())
//    }
//}
