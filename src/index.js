import React from 'react';
import ReactDOM from 'react-dom';
import { AppContainer } from 'react-hot-loader';
import {AppContainer} from 'react-hot-loader';
import {Provider} from 'react-redux';
import {syncHistoryWithStore} from 'react-router-redux';
import {browserHistory} from 'react-router';
import injectTapEventPlugin from 'react-tap-event-plugin'

/*
 import { initAuth } from './core/auth';
 import configureStore from './core/store';
 import Root from './views/root';
 import './views/style.css';
 const syncedHistory = syncHistoryWithStore(browserHistory, store);
 const rootElement = document.getElementById('root');
 
 
 function render(Root) {
 ReactDOM.render(
 <AppContainer>
 <Root history={syncedHistory} store={store} />
 </AppContainer>,
 rootElement
 );
 }
 
 if (module.hot) {
 module.hot.accept('./views/root', () => {
 render(require('./views/root').default);
 });
 }
 
 initAuth(store.dispatch)
 .then(() => render(Root))
 .catch(error => console.error(error)); // eslint-disable-line no-console
 
 
 */
// api
import {FirebaseApi} from './core/firebase/firebase';

// actions
import {authInitialized} from './actions/authActions';
import {ajaxCallError, beginAjaxCall} from './actions/ajaxStatusActions';

// components
import App from './components/App';

// Store
import initialState from './reducers/initialState';
import configureStore from './store/configureStore'; //eslint-disable-line import/default

// styles
import './styles/styles.css'; //Webpack can import CSS files too!
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import '../node_modules/toastr/build/toastr.min.css';

// store initialization
const store = configureStore(initialState);

// Create an enhanced history that syncs navigation events with the store
const history = syncHistoryWithStore(browserHistory, store);
const rootEl = document.getElementById('root');



injectTapEventPlugin();


// Initialize Firebase Auth and then start the app
store.dispatch(beginAjaxCall());
FirebaseApi.initAuth()
           .then(
             user => {
               store.dispatch(authInitialized(user));
    
               ReactDOM.render(
               <AppContainer>
               <Provider store={store}>
                 <App history={history} store={store}/>
                 </Provider>
                 </AppContainer>,
                 rootEl
               );
    
               if (module.hot) {
                 module.hot.accept('./components/App', () => {
                   // If you use Webpack 2 in ES modules mode, you can
                   // use <App /> here rather than require() a <NextApp />.
                   const NextApp = require('./components/App').default;
                   ReactDOM.render(
                   <AppContainer>
                   <Provider store={store}>
                     <NextApp history={history} store={store}/>
                     </Provider>
                     </AppContainer>,
                     rootEl
                   );
                 });
               }
             })
           .catch(
             error => {
               store.dispatch(ajaxCallError());
               console.error('error while initializing Firebase Auth'); // eslint-disable-line no-console
               console.error(error); // eslint-disable-line no-console
             });
