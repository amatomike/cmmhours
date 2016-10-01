import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { authActions } from './../../../core/auth';


export function SignIn({signInWithGoogle, signInWithEmail}) {
  return (
    <div className="g-row sign-in">
      <div className="g-col">
        <h1>Sign in</h1>
        <button className="btn sign-in__button" onClick={signInWithEmail} type="button">Demo User</button>
        <button className="btn sign-in__button" onClick={signInWithGoogle} type="button">Google</button>
      </div>
    </div>
  );
}

SignIn.propTypes = {
  signInWithEmail: PropTypes.func.isRequired,
  signInWithGoogle: PropTypes.func.isRequired,
};


//=====================================
//  CONNECT
//-------------------------------------

export default connect(null, authActions)(SignIn);
