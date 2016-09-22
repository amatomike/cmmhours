import { FirebaseList } from './../firebase';
import * as reportActions from './actions';
import { Report } from './report';


export const reportList = new FirebaseList({
  onAdd: reportActions.createReportSuccess,
  onChange: reportActions.updateReportSuccess,
  onLoad: reportActions.loadReportsSuccess,
  onRemove: reportActions.deleteReportSuccess
}, Report);
