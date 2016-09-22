import { Report, qbStatus as QBStatus } from './report';
import { getDeletedReport } from './selectors';
import { reportList } from './report-list';
import {
  CREATE_REPORT_ERROR,
  CREATE_REPORT_SUCCESS,
  DELETE_REPORT_ERROR,
  DELETE_REPORT_SUCCESS,
  FILTER_REPORTS,
  LOAD_REPORTS_SUCCESS,
  UNDELETE_REPORT_ERROR,
  UNLOAD_REPORTS_SUCCESS,
  UPDATE_REPORT_ERROR,
  UPDATE_REPORT_SUCCESS,
  LOAD_REPORT_FOR_EDITING
} from './action-types';
export var reportToEdit = new Report;
// this.reportToEdit = setupNewReport();

export function setupReportWith( date, key, employee, jobs, customers, services, totalHours, approved, approvedBy, needsReview, tasks, qbStatus ) {
    return new Report({
      date:date,
      key:key,
      employee:employee,
      jobs:jobs,
      customers:customers,
      services:services,
      totalHours:totalHours,
      approved:approved,
      approvedBy:approvedBy,
      needsReview:needsReview,tasks:tasks,
      qbStatus:qbStatus
    })
}
export function setupNewReport() {
  return new Report({
    date: null,
    key: null,
    employee:null,
    jobs:null,
    customers:null,
    services:null,
    totalHours: null,
    approved:false,
    approvedBy:null,
    needsReview:false,
    tasks:null,
    qbStatus:new QBStatus({
      key:null,
      sendToQB:false,
      sentToQB:false,
      confirmedByQB:false,
      confirmedOnDate:null,
      sentOnDate:null
    }) 
  })
}

export function createReport( date, key, employee, jobs, customers, services, totalHours, approved, approvedBy, needsReview, tasks, qbStatus ) {
  return dispatch => {
    reportList.push({       
                      date:date,
                      key:key,
                      employee:employee,
                      jobs:jobs,
                      customers:customers,
                      services:services,
                      totalHours:totalHours,
                      approved:approved,
                      approvedBy:approvedBy,
                      needsReview:needsReview,tasks:tasks,
                      qbStatus:qbStatus
                    })
      .catch(error => dispatch(createReportError(error)));
  };
}

export function createReportError(error) {
  return {
    type: CREATE_REPORT_ERROR,
    payload: error
  };
}

export function createReportSuccess(report) {
  return {
    type: CREATE_REPORT_SUCCESS,
    payload: report
  };
}

export function deleteReport(report) {
  return dispatch => {
    reportList.remove(report.key)
      .catch(error => dispatch(deleteReportError(error)));
  };
}

export function deleteReportError(error) {
  return {
    type: DELETE_REPORT_ERROR,
    payload: error
  };
}

export function deleteReportSuccess(report) {
  return {
    type: DELETE_REPORT_SUCCESS,
    payload: report
  };
}

export function undeleteReport() {
  return (dispatch, getState) => {
    const report = getDeletedReport(getState());
    if (report) {
      reportList.set( report.key, {
        date:report.date,
        employee:report.employee,
        jobs:report.jobs,
        customers:report.customers,
        services:report.services,
        totalHours:report.totalHours,
        approved:report.approved,
        approvedBy:report.approvedBy,
        needsReview:report.needsReview,
        tasks:report.tasks,
        qbStatus:report.qbStatus
    })
        .catch(error => dispatch(undeleteReportError(error)));
    }
  };
}

export function undeleteReportError(error) {
  return {
    type: UNDELETE_REPORT_ERROR,
    payload: error
  };
}

export function updateReportError(error) {
  return {
    type: UPDATE_REPORT_ERROR,
    payload: error
  };
}

export function updateReport(report, changes) {
  return dispatch => {
    reportList.update(report.key, changes)
      .catch(error => dispatch(updateReportError(error)));
  };
}

export function updateReportSuccess(report) {
  return {
    type: UPDATE_REPORT_SUCCESS,
    payload: report
  };
}

export function loadReportsSuccess(reports) {
  return {
    type: LOAD_REPORTS_SUCCESS,
    payload: reports
  };
}

export function filterReports(filterType) {
  return {
    type: FILTER_REPORTS,
    payload: {filterType}
  };
}

export function loadReports() {
  return (dispatch, getState) => {
    const { auth } = getState();
    reportList.path = `reports/${auth.id}`;
    reportList.subscribe(dispatch);
  };
}

export function unloadReports() {
  reportList.unsubscribe();
  return {
    type: UNLOAD_REPORTS_SUCCESS
  };
}
export function loadReportForEditing(editReport) {
  var returnReport = setupNewReport();
  returnReport = editReport?editReport:this.reportToEdit;
  return returnReport;
}
