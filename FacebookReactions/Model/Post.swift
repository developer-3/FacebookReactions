//
//  Post.swift
//  FacebookReactions
//
//  Created by Adam Anderson on 10/21/20.
//

import SwiftUI

struct Post : Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var time : String
    var liked : Bool
    var reaction : String
    var show = false
}
