//
//  Model.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//
import Foundation
import UIKit

struct Model {
    var image: String
    var label: String
    var labelInt: String
}

extension Model {
    static var modelMedia = [
        [Model(image: "photo1", label: "Недавние", labelInt: "439"),
         Model(image: "photo2", label: "Избранные", labelInt: "33"),
         Model(image: "photo3", label: "Instagram", labelInt: "49"),
         Model(image: "photo6", label: "WhatsApp", labelInt: "2"),
         Model(image: "photo4", label: "Lightroom", labelInt: "24"),
         Model(image: "photo5", label: "Aliexpress", labelInt: "1")],

        [Model(image: "photo7", label: "Food", labelInt: "67"),
         Model(image: "photo8", label: "Разное", labelInt: "82"),
         Model(image: "photo9", label: "Карты", labelInt: "27"),
         Model(image: "photo10", label: "Moto", labelInt: "59")],

        [Model(image: "video", label: "Видео", labelInt: "132"),
         Model(image: "person.crop.square", label: "Селфи", labelInt: "33"),
         Model(image: "livephoto", label: "Фото Live Photos", labelInt: "56"),
         Model(image: "cube", label: "Портреты", labelInt: "9"),
         Model(image: "timelapse", label: "Таймлапс", labelInt: "13"),
         Model(image: "square.stack.3d.forward.dottedline", label: "Замедленно", labelInt: "5"),
         Model(image: "camera.viewfinder", label: "Снимки экрана", labelInt: "25")],

        [Model(image: "square.and.arrow.down", label: "Импортированные", labelInt: "0"),
         Model(image: "eye.slash", label: "Скрытые", labelInt: "0"),
         Model(image: "trash", label: "Недавно удалённые", labelInt: "134")]]
}
