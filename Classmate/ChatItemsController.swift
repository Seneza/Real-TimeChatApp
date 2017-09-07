//
//  ChatItemsController.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/10/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class ChatItemsController {
    var items = [ChatItemProtocol]()
    var totalMessages = [ChatItemProtocol]()
    
    func loadIntoItemsArray(messagesNeeded: Int){
        //self.items = totalMessages
        for index in stride(from: totalMessages.count - items.count, to: totalMessages.count - items.count - messagesNeeded, by: -1) {
            self.items.insert(totalMessages[index - 1], at: 0)
        }
    }
    
    func insertItem(message: ChatItemProtocol){
        self.items.append(message)
        self.totalMessages.append(message)
    }
    
    func loadPrevious() {
        self.loadIntoItemsArray(messagesNeeded: min(totalMessages.count - items.count, 50))
    }
    
    func adjustWindow() {
        self.items.removeFirst(200)
    }
}
