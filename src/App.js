/*$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
 $ Copyright (c) 2016. Mike Amato, All Rights Reserved.
 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$*/

import React, {Component} from 'react';
//import logo from './logo.svg';
import cmmlogo from './cmmlogo.png';
import './App.css';

class App extends Component {
    render() {
        return (
            <div className="App">
                <div className="App-header">
                    <img src={cmmlogo} className="App-logo" alt="logo"/>
                    <br></br>
                    <h2>CMM Hours Report</h2>
                </div>
                <p className="App-intro">
                    To get started, <a href='./login'>login</a> or register .
                </p>
            </div>
        );
    }
}

export default App;
