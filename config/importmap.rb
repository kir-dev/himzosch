# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.1/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "alpinejs", to: "https://ga.jspm.io/npm:alpinejs@3.10.4/dist/module.esm.js"
pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@1.5.3/dist/flowbite.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "stimulus-notification", to: "https://ga.jspm.io/npm:stimulus-notification@2.2.0/dist/stimulus-notification.mjs"
pin "hotkeys-js", to: "https://ga.jspm.io/npm:hotkeys-js@3.10.1/dist/hotkeys.esm.js"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.51.3/dist/index.js"
pin "masonry-layout", to: "https://ga.jspm.io/npm:masonry-layout@4.2.2/masonry.js"
pin "desandro-matches-selector", to: "https://ga.jspm.io/npm:desandro-matches-selector@2.0.2/matches-selector.js"
pin "ev-emitter", to: "https://ga.jspm.io/npm:ev-emitter@1.1.1/ev-emitter.js"
pin "fizzy-ui-utils", to: "https://ga.jspm.io/npm:fizzy-ui-utils@2.0.7/utils.js"
pin "get-size", to: "https://ga.jspm.io/npm:get-size@2.0.3/get-size.js"
pin "outlayer", to: "https://ga.jspm.io/npm:outlayer@2.1.1/outlayer.js"
