'use strict';

require('./index.html');
require('./style/main.scss');

const config = {
    apiKey: "AIzaSyBoPVveKRm0LVOdPo_znPcfmSif8KQbg0o",
    databaseURL: "https://elm-realtime-counter.firebaseio.com",
    projectId: "elm-realtime-counter",
};
firebase.initializeApp(config);

const { Elm } = require('./Main.elm');
const app = Elm.Main.init({
    node: document.getElementById('app')
});
