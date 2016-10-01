import React, { Component, PropTypes } from 'react';
import Snackbar from 'material-ui/Snackbar';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';

class Notification extends Component {
  static propTypes = {
    action: PropTypes.func.isRequired,
    actionLabel: PropTypes.string.isRequired,
    dismiss: PropTypes.func.isRequired,
    display: PropTypes.bool.isRequired,
    duration: PropTypes.number,
    message: PropTypes.string.isRequired
  };

  componentDidMount() {
    this.startTimer();
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.display) {
      this.startTimer();
    }
  }

  componentWillUnmount() {
    this.clearTimer();
  }

  clearTimer() {
    if (this.timerId) {
      clearTimeout(this.timerId);
    }
  }

  startTimer() {
    this.clearTimer();
    this.timerId = setTimeout(() => {
      this.props.dismiss();
    }, this.props.duration || 6900);
  }
  handleActionTouchTap = () => {
    this.setState({
                    open: false,
                  });
    alert('Event removed from your calendar.');
  };

  render() {
    return (
      <div className="notification">
      <Snackbar
    open={this.props.display}
    message={this.props.message}
    action={this.props.actionLabel}
    autoHideDuration={10000}
    onActionTouchTap={this.props.action}
    onRequestClose={this.props.dismiss}
  /></div>
    );
  }
}

export default Notification;
