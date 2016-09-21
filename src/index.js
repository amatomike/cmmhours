/*******************************************************************************
 * Copyright (c) 2016. Mike Amato, All Rights Reserved.
 ******************************************************************************/

import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import './index.css';
//var ReactDOM = require('react-dom');
var routes = require('./config/routes');

ReactDOM.render( routes , document.getElementById('root'));

//ReactDOM.render(
//    <App />,
//    document.getElementById('root')
//);
