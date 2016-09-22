import { routerReducer } from 'react-router-redux';
import { combineReducers } from 'redux';
import { authReducer } from './auth';
import { notificationReducer } from './notification';
import { tasksReducer } from './tasks';
import { reportsReducer } from './reports';
import { cmmDataReducer } from './cmmdata';

export default combineReducers({
  auth: authReducer,
  notification: notificationReducer,
  routing: routerReducer,
  tasks: tasksReducer,
  reports: reportsReducer,
  cmmData: cmmDataReducer
});
