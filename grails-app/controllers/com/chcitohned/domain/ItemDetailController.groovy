package com.chcitohned.domain

import com.chcitohned.domain.Category
import com.chcitohned.domain.Geopoint
import com.chcitohned.domain.Item

class ItemDetailController {

    def show(Long itemId) {
        def geopoint = new Geopoint(address: "[Nivnice, Czech Republic]", latitude: 48.97464440, longitude: 17.64758320)
        def category = new Category(name: "masáže")

        def item = new Item(name: "masáž", description: "Název to dokonale vystihuje", location: geopoint, servedDistance: null, category: category)

        [item: item]
    }

}
