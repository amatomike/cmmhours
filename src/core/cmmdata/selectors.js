import { createSelector } from 'reselect';


export function getCmmData(state) {
  return state.cmmData;
}

export function getCmmDataList(state) {
  return getCmmData(state).list;
}
export function getCmmDataFilter(state) {
  return getCmmData(state).filter;
}

//=====================================
//  MEMOIZED SELECTORS\\\
//-------------------------------------
/*
export const getCmmDataTypes = createSelector(
  getCmmDataList,
  getCmmDataFilter,
  (cmmData, filter) => {
    switch (filter) {
      case 'employees':
        return cmmData.filter(cmmData => cmmData.employees);

      case 'jobs':
        return cmmData.filter(cmmData => cmmData.jobs);

      case 'services':
        return cmmData.filter(cmmData => cmmData.services);

      default:
        return cmmData;
    }
  }
);
*/