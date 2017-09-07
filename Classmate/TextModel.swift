//
//  TextModel.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/9/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class TextModel: TextMessageModel<MessageModel> {
    static let chatItemType = "text"
    override init(messageModel: MessageModel, text: String) {
        super.init(messageModel: messageModel, text: text)
    }
}
