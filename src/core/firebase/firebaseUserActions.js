import { firebaseAuth, firebaseApp, firebaseDb } from './firebase';
import {firebaseConfig} from './config';

class FirebaseApi {
  
  static initAuth() {
    firebaseAuth.initializeApp(firebaseConfig);
    return new Promise((resolve, reject) => {
      const unsub = firebaseAuth.onAuthStateChanged(
        user => {
          unsub();
          resolve(user);
        },
        error => reject(error)
      );
    });
  }
  
  static createUserWithEmailAndPassword(user){
    return firebaseAuth.createUserWithEmailAndPassword(user.email, user.password);
  }
  
  static signInWithEmailAndPassword(user) {
    return firebaseAuth.signInWithEmailAndPassword(user.email, user.password);
  }
  
  static authSignOut(){
    return firebaseAuth.signOut();
  }
  
  static databasePush(path, value) {
    return new Promise((resolve, reject) => {
      firebaseApp
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
    return firebaseApp
    .database()
    .ref(path)
    .orderByKey()
    .equalTo(key)
    .once('value');
  }
  
  static GetChildAddedByKeyOnce(path, key) {
    return firebaseApp
    .database()
    .ref(path)
    .orderByKey()
    .equalTo(key)
    .once('child_added');
  }
  
  static databaseSet(path, value) {
    
    return firebaseApp
    .database()
    .ref(path)
    .set(value);
    
  }
}

export default FirebaseApi;
/**
 * Created by A on 9/24/2016.
 */
