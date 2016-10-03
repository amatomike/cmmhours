/**
 * Created by A on 9/25/2016.
 */
import { Record } from 'immutable';
export function extractUserProperties(firebaseUser) {
  
  const user = {};
  const userProperties = [
    'displayName',
    'email',
    'emailVerified',
    'isAnonymous',
    'photoURL',
    'providerData',
    'providerId',
    'refreshToken',
    'uid',
    'isAdmin',
    'employeeId'
  ];
  
  userProperties.map((prop) => {
    if (prop in firebaseUser) {
      user[prop] = firebaseUser[prop];
    }
  });
  
  return user;
}
export function mapFirebaseData( firebaseObj, fbObjProperties = [] ) {
  const fbObj = {};
  fbObjProperties.map((prop) => {
    if (prop in firebaseObj) {
      fbObj[prop] = firebaseObj[prop];
    }
  });
  return fbObj;
}

export const employees = new Record({
  name:null,
  id:null,
  key:null,
  userId:null
});
export const jobs = new Record({
  name:null,
  id:null,
  key:null
});
export const services = new Record({
  name:null,
  id:null,
  key:null
});
export const CMMData = new Record({
  employees:null,
  service_item_list:null,
  jobs:null,
  key:null,
  list:null,
  state:null,
  filter:null
});
