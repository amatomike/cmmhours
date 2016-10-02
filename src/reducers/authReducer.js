import * as types from '../actions/actionTypes';
import initialState from './initialState';

export default function authReducer(state = initialState.auth, action) {
  switch (action.type) {
    case types.AUTH_INITIALIZATION_DONE:
      return Object.assign({}, state, {initialized: true});

    case types.AUTH_LOGGED_IN_SUCCESS:
      return Object.assign({}, state, {
        isLogged: true,
        currentUserUID: action.userUID
      });

    case types.AUTH_LOGGED_OUT_SUCCESS:
      return Object.assign({}, state, {
        isLogged: false,
        currentUserUID: null
      });
    case INIT_AUTH:
    case SIGN_IN_SUCCESS:
      return state.merge({
                           authenticated: !!payload,
                           id: payload ? payload.uid : null,
                           email: payload ? payload.email : null,
                           username: payload ? payload.username : null
                         });
  
    case SIGN_OUT_SUCCESS:
      return new AuthState();
    default:
      return state;
  }
}
