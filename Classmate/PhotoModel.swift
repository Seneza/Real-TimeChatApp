//
//  PhotoModel.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/27/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class PhotoModel: PhotoMessageModel<MessageModel> {
    static let chatItemType = "photo"
    override init(messageModel: MessageModel, imageSize: CGSize, image: UIImage) {
        super.init(messageModel: messageModel, imageSize: imageSize, image: image)
    }
    
}
