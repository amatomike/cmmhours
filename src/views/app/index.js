import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { createSelector } from 'reselect';
import { authActions, getAuth } from './../../core/auth';
import { paths } from './../routes';
import Header from './../components/header';
import Theme from './../../theme'
import getMuiTheme from 'material-ui/styles/getMuiTheme'


export class App extends Component {
  
  static childContextTypes = {
    muiTheme: PropTypes.object
  };
  
  getChildContext = () => (
  {
    muiTheme: getMuiTheme(Theme)
  });
  
  static contextTypes = {
    router: React.PropTypes.object.isRequired
  
  };

  static propTypes = {
    auth: PropTypes.object.isRequired,
    children: PropTypes.object.isRequired,
    signOut: PropTypes.func.isRequired
  };

  componentWillReceiveProps(nextProps) {
    const { router } = this.context;
    const { auth } = this.props;

    if (auth.authenticated && !nextProps.auth.authenticated) {
      router.replace(paths.SIGN_IN);
    }
    else if (!auth.authenticated && nextProps.auth.authenticated) {
      router.replace(paths.TASKS);
    }
  }

  render() {
    return (
      <div>
        <Header
          authenticated={this.props.auth.authenticated}
          signOut={this.props.signOut}
        />

        <main className="main">{this.props.children}</main>
      </div>
    );
  }
}


//=====================================
//  CONNECT
//-------------------------------------

const mapStateToProps = createSelector(
  getAuth,
  auth => ({auth})
);

export default connect(
  mapStateToProps,
  authActions
)(App);
