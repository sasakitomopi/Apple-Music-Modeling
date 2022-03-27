//
//  PlayImpl.swift
//  PlayMusic
//
//  Created by user on 2022/01/23.
//

import SwiftUI

struct LibraryList : View {
    @EnvironmentObject var modelData : ModelData
    var music : [Music] {
        modelData.musics
    }
    
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(music) { music in
                        LibrarySource(music: music)
                    }
                    .foregroundColor(Color.gray)
                }
                .listStyle(InsetListStyle())
                .navigationTitle("Library")
            }
            
        }
        
        //            .navigationBarTitle("My Music📱",displayMode: .inline)
        //            .background(NavigationConfigurator { nc in
        //                nc.navigationBar.barTintColor = .blue
        //                nc.navigationBar.titleTextAttributes = [.foregroundColor:UIColor.gray]
        //            })
        //            .navigationViewStyle(StackNavigationViewStyle())
        //        }
    }
}

//struct NavigationConfigurator : UIViewControllerRepresentable {
//    var configure: (UINavigationController) -> Void = { _ in}
//
//    func makeUIViewController(context: Context) -> some UIViewController {
//        UIViewController()
//    }
//
//
//    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//        if let nc = uiViewController.navigationController {
//            self.configure(nc)
//        }
//    }
//}

struct LibraryList_Previews: PreviewProvider {
    static var previews: some View {
        LibraryList()
            .environmentObject(ModelData())
            .previewDevice("iPhone 12 Pro")
    }
}
