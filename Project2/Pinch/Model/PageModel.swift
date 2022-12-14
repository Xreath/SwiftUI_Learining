//
//  PageModel.swift
//  Pinch
//
//  Created by Fazlı Koç on 10.10.2022.
//

import Foundation

struct Page:Identifiable{
    let id :Int
    let imageName:String
    
}

extension Page{
    var thumbnailName : String{
        
        return "thumb-" + imageName
    }
}
