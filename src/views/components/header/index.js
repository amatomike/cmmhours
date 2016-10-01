import React, { PropTypes } from 'react';
import AppBar from 'material-ui/AppBar';
import IconButton from 'material-ui/IconButton';
import IconMenu from 'material-ui/IconMenu';
import MenuItem from 'material-ui/MenuItem';
import MoreVertIcon from 'material-ui/svg-icons/navigation/more-vert';
import Paper from 'material-ui/Paper';
import Menu from 'material-ui/Menu';
import AccountCircle from 'material-ui/svg-icons/action/account-circle';
import FontIcon from 'material-ui/FontIcon';
import RaisedButton from 'material-ui/RaisedButton';


const style = {
  paper: {
    display: 'inline-block',
    float: 'left',
    margin: '16px 32px 16px 0',
  },
  rightIcon: {
    textAlign: 'center',
    lineHeight: '24px',
  },
};

const Header = ({authenticated, signOut}) => {
  return (
    <header className="header">
  <AppBar
  title="CMM Daily Hours"
  iconElementRight={authenticated ?
              <IconMenu
                iconButtonElement={<IconButton><AccountCircle/></IconButton>}
                anchorOrigin={{horizontal: 'right', vertical: 'top'}}
                targetOrigin={{horizontal: 'right', vertical: 'top'}}
              >
                  <MenuItem primaryText="Settings" />
                  <MenuItem primaryText="Help" />
                  <MenuItem primaryText="Sign out" onTouchTap={signOut} />
              </IconMenu>:
    <RaisedButton onTouchTap={ null } label="Sign In/Up" />}
    
  iconElementLeft={
          <IconMenu
            iconButtonElement={<IconButton><MoreVertIcon /></IconButton>}
            targetOrigin={{horizontal: 'left', vertical: 'top'}}
            anchorOrigin={{horizontal: 'left', vertical: 'top'}}>
            <MenuItem primaryText="Todays Hours" disabled={authenticated?false:true} />
            <MenuItem primaryText="Check Reports" disabled={authenticated?false:true}/>
            <MenuItem primaryText="Messages" disabled={authenticated?false:true}/>
            <MenuItem primaryText="Refresh" />
            <MenuItem primaryText="Send feedback" />
          </IconMenu>}
  /></header>
  );
};

Header.propTypes = {
  authenticated: PropTypes.bool.isRequired,
  signOut: PropTypes.func.isRequired
};

export default Header;
