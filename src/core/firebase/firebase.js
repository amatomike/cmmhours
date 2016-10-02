import firebase from 'firebase';
import { firebaseConfig } from './config';


export const firebaseApp = firebase.initializeApp(firebaseConfig);
export const firebaseAuth = firebaseApp.auth();
export const firebaseDb = firebaseApp.database();
export class FirebaseApi {
  
  static initAuth() {
    firebase.initializeApp(firebaseConfig);
    return new Promise((resolve, reject) => {
      const unsub = firebase.auth().onAuthStateChanged(
        user => {
          unsub();
          resolve(user);
        },
        error => reject(error)
      );
    });
  }
  
  static createUserWithEmailAndPassword(user){
    return firebase.auth().createUserWithEmailAndPassword(user.email, user.password);
  }
  
  static signInWithEmailAndPassword(user) {
    return firebase.auth().signInWithEmailAndPassword(user.email, user.password);
  }
  
  static authSignOut(){
    return firebase.auth().signOut();
  }
  
  static databasePush(path, value) {
    return new Promise((resolve, reject) => {
      firebase
      .database()
      .ref(path)
      .push(value, (error) => {
        if (error) {
          reject(error);
        } else {
          resolve();
        }
      });
    });
  }
  
  static GetValueByKeyOnce(path, key) {
    return firebase
    .database()
    .ref(path)
    .orderByKey()
    .equalTo(key)
    .once('value');
  }
  
  static GetChildAddedByKeyOnce(path, key) {
    return firebase
    .database()
    .ref(path)
    .orderByKey()
    .equalTo(key)
    .once('child_added');
  }
  
  static databaseSet(path, value) {
    
    return firebase
    .database()
    .ref(path)
    .set(value);
    
  }
}
