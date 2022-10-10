//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Fazlı Koç on 10.10.2022.
//

import SwiftUI

struct InfoPanelView: View {
    
    var scale : CGFloat
    var offset : CGSize
    
    
    
    @State private var isInfPanelVis:Bool = false
    var body: some View {
        HStack{
            //MARK: - Hotspot
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .onLongPressGesture{
                    withAnimation(.easeOut) {
                        isInfPanelVis.toggle()
                    }
                }
            Spacer()
            
            //MARK: - Info Panel
            HStack (spacing: 2){
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                Spacer()
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                Spacer()
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 8.0/*@END_MENU_TOKEN@*/)
            .font(.footnote)
            .background(.ultraThickMaterial)
            .cornerRadius(8)
            .frame(maxWidth:420)
            .opacity(isInfPanelVis ? 1:0)
            
            
            Spacer()
            
            
        }
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
