//
//  Home.swift
//  CustomPopupsWithNavigationView
//
//  Created by Quang Bao on 26/01/2022.
//

import SwiftUI

struct Home: View {
    
    @State var showPopup: Bool = false
    var body: some View {
        
        NavigationView{
            
            Button("Show Popup"){
                withAnimation {
                    showPopup.toggle()
                }
            }
            .navigationTitle("Custom Popup's")
            .popupNavigationView(horizontalPadding: 40, show: $showPopup) {
                
                // MARK: Your Popup content which will also performs navigations
                List{
                    ForEach(tasks){task in
                        NavigationLink(task.taskTitle){
                            Text(task.taskDescription)
                                .navigationTitle("Destination")
                        }
                    }
                }
                .navigationTitle("Popup Navigation")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                        }

                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            withAnimation {
                                showPopup.toggle()
                            }
                        } label: {
                            Text("Close")
                        }

                    }
                }
            }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
