import { Record } from 'immutable';
import { DELETE_TASK_SUCCESS } from './../tasks';
import { DISMISS_NOTIFICATION } from './action-types';


export const NotificationState = new Record({
  actionLabel: '',
  display: false,
  message: '',
  open: false
});


export function notificationReducer(state = new NotificationState(), action) {
  switch (action.type) {
    case DELETE_TASK_SUCCESS:
      return state.merge({
        actionLabel: 'Undo',
        display: true,
        message: 'Task deleted',
        open: true
      });

    case DISMISS_NOTIFICATION:
      return new NotificationState();

    default:
      return new NotificationState();
  }
}
