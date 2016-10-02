import {combineReducers} from 'redux';
import user from './userReducer';
import routesPermissions from './routesPermissionsReducer';
import auth from './authReducer';
import { routerReducer } from 'react-router-redux';
import { notificationReducer } from './../core/notification';
import { tasksReducer } from './../core/tasks';
import { reportsReducer } from './../core/reports';
import { cmmDataReducer } from './../core/cmmdata';
import ajaxCallsInProgress from './ajaxStatusReducer';


const rootReducer = combineReducers({
  notification: notificationReducer,
  tasks: tasksReducer,
  reports: reportsReducer,
  cmmData: cmmDataReducer,
  routing: routerReducer,
  routesPermissions,
  user,
  auth,
  ajaxCallsInProgress
});

export default rootReducer;
