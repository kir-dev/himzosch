import {Controller} from "@hotwired/stimulus"
import Masonry from 'masonry-layout'

export default class extends Controller {
    connect() {
        console.log('Gallery controller attached')
        const msnry = new Masonry(this.element, {
            itemSelector: '.grid-item',
            columnWidth: 200
        })
    }
}
