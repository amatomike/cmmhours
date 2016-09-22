import { List, Record } from 'immutable';

import {
  SIGN_OUT_SUCCESS

} from './../auth';
import {
    LOAD_CMMDATA_EMPLOYEES_SUCCESS,
    LOAD_CMMDATA_JOBS_SUCCESS,
    LOAD_CMMDATA_SERVICES_SUCCESS,
    FILTER_CMMDATA,
    LOAD_CMMDATA_SUCCESS,
    UNLOAD_CMMDATA_SUCCESS,
    UNLOAD_CMMDATA_EMPLOYEES_SUCCESS,
    UNLOAD_CMMDATA_JOBS_SUCCESS,
    UNLOAD_CMMDATA_SERVICES_SUCCESS
} from './action-types';
// export function escapeRegexCharacters(str) {
//   return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');}
// export function theregex(thedata){
//   function escapeChars(str) {
//     return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');}
//  const escapedValue = escapeChars(this.state.searchValue.trim());
//   const regex = new RegExp('.*' + escapedValue, 'i');
//   return thedata.filter = > regex.test(thedata.name)
// }

  export const CmmDataState = new Record({
    list:new List(),
    filter:'',
    cmmData:''
});


export function cmmDataReducer(state = new CmmDataState(), {payload, type}) {
  switch (type) {
    case LOAD_CMMDATA_SUCCESS:
      state.set('list', new List(payload.reverse()));
      return state;
    case LOAD_CMMDATA_JOBS_SUCCESS:
      return state.set('jobs', new List(payload.reverse()));
    case LOAD_CMMDATA_EMPLOYEES_SUCCESS:
      return state.set('employees', new List(payload.reverse()));
    case LOAD_CMMDATA_SERVICES_SUCCESS:
      return state.set('services', new List(payload.reverse()));

    case SIGN_OUT_SUCCESS:
      return new CmmDataState();

    default:
      return state;
  }
}
