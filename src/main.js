'use strict';

require('./index.html');

const { Elm } = require('./Main.elm');

const app = Elm.Main.init({
    node: document.getElementById('app')
});
