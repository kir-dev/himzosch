import {Controller} from "@hotwired/stimulus"
import Masonry from 'masonry-layout'

export default class extends Controller {

    msnry = null;

    connect() {
        console.log('Gallery controller attached')
        this.msnry = new Masonry(this.element, {
            itemSelector: '.grid-item',
            columnWidth: 200
        })
    }

    layout(){
        this.msnry.reloadItems()
        this.msnry.layout()
        console.log('Layout changed')
    }
}
