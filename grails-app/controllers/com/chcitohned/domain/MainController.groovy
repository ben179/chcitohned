package com.chcitohned.domain

import com.chcitohned.domain.Category
import com.chcitohned.domain.Geopoint
import com.chcitohned.domain.Item
import org.junit.experimental.categories.Categories

class MainController {

    def index() {
        List<Item> items = new ArrayList<Item>()
        [foudedItems: items]
    }

    def findItems() {

        def geopoint = new Geopoint(address: "[Nivnice, Czech Republic]", latitude: 48.97464440, longitude: 17.64758320)
        def category = new Category(name: "masáže")

        def items = new ArrayList<Item>()
        items.add(new Item(name: "masáž", description: "Název to dokonale vystihuje", location: geopoint, servedDistance: null, category: category))

        def categories = new HashSet<Category>()
        items.each {
            categories.add(it.getCategory())
        }

        render(view: "index", model: [foudedItems: items, categories: categories])
    }
}
