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

firebase.database().ref('count').on('value', (snap) => {
    const count = snap.val();
    app.ports.load.send(count);
    console.log(`load the counter: ${count}`);
});
