import { FirebaseList } from './../firebase';
import * as cmmDataActions from './actions';
import { CMMData, employees, jobs, services } from './cmmdata-types';


export const cmmDataList = new FirebaseList({
  onLoad: cmmDataActions.loadCmmDataSuccess
}, CMMData);
export const employeesList  = new FirebaseList({
  onLoad: cmmDataActions.loadCmmDataEmployeesSuccess
}, employees);
export const jobsList = new FirebaseList({
  onLoad: cmmDataActions.loadCmmDataJobsSuccess
}, jobs);
export const servicesList = new FirebaseList({
  onLoad: cmmDataActions.loadCmmDataServicesSuccess
}, services);

