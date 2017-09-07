//
//  PhotoBuilder.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/27/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions


class PhotoViewModel: PhotoMessageViewModel<PhotoModel> {
    override init(photoMessage: PhotoModel, messageViewModel: MessageViewModelProtocol) {
        super.init(photoMessage: photoMessage, messageViewModel: messageViewModel)
    }
}

class PhotoBuilder: ViewModelBuilderProtocol {
    let defaultBuilder = MessageViewModelDefaultBuilder()
    func canCreateViewModel(fromModel decoratedPhotoMessage: Any) -> Bool {
        return decoratedPhotoMessage is PhotoModel
    }
    
    func createViewModel(_ decoratedPhotoMessage: PhotoModel) -> PhotoViewModel {
        let photoMessageViewModel = PhotoViewModel(photoMessage: decoratedPhotoMessage, messageViewModel: defaultBuilder.createMessageViewModel(decoratedPhotoMessage))
    return photoMessageViewModel
    
    }
}
