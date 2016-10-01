import { List } from 'immutable';
import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { createSelector } from 'reselect';

import { getNotification, notificationActions } from './../../../core/notification';
import { getTaskFilter, getVisibleTasks, tasksActions } from './../../../core/tasks';
//import { getCmmDataList, cmmDataActions } from './../../../core/cmmdata';
import Notification from './../../components/notification';
import TaskFilters from './../../components/task-filters';
import TaskForm from './../../components/task-form';
import TaskList from './../../components/task-list';
import cmmData from './../../components/autosuggest/cmmdata.js';


export class Tasks extends Component {
  
  constructor(props, context) {
    super(props, context);
    
    this.state = {
      cmmData:cmmData,
      employees:cmmData.employees,
      services:cmmData.service_item_list,
      jobs:cmmData.jobs,
      billingRateLevels:cmmData.billing_rate_level
    }

    };
    
  static propTypes = {
    createTask: PropTypes.func.isRequired,
    deleteTask: PropTypes.func.isRequired,
    dismissNotification: PropTypes.func.isRequired,
    filterTasks: PropTypes.func.isRequired,
    filterType: PropTypes.string.isRequired,
    loadTasks: PropTypes.func.isRequired,
    location: PropTypes.object.isRequired,
    notification: PropTypes.object.isRequired,
    tasks: PropTypes.instanceOf(List).isRequired,
    undeleteTask: PropTypes.func.isRequired,
    unloadTasks: PropTypes.func.isRequired,
    updateTask: PropTypes.func.isRequired,
  };

  componentWillMount() {
    this.props.loadTasks();
    this.props.filterTasks(this.props.location.query.filter);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.location.query.filter !== this.props.location.query.filter) {
      this.props.filterTasks(nextProps.location.query.filter);
    }
  }

  componentWillUnmount() {
    this.props.unloadTasks();
  }

  renderNotification() {
    const { notification } = this.props;
    return (
      <Notification
        action={this.props.undeleteTask}
        actionLabel={notification.actionLabel}
        dismiss={this.props.dismissNotification}
        display={notification.display}
        message={notification.message}
      />
    );
  }

  render() {
    return (
      <div className="g-row">
        <div className="g-col">
          <TaskForm createTask={this.props.createTask} employees={this.state.employees} services={this.state.services} jobs={this.state.jobs}/>
        </div>

        <div className="g-col">
          <TaskFilters filter={this.props.filterType} />
          <TaskList
            deleteTask={this.props.deleteTask}
            tasks={this.props.tasks}
            updateTask={this.props.updateTask}
            employees={this.state.employees}
            services={this.state.services}
            jobs={this.state.jobs}
            />
        </div>

        {this.props.notification.display ? this.renderNotification() : null}
      </div>
    );
  }
}


//=====================================
//  CONNECT
//-------------------------------------

const mapStateToProps = createSelector(
  getNotification,
  getTaskFilter,
  getVisibleTasks,
  (notification, filterType, tasks) => ({
    notification,
    filterType,
    tasks
  })
);

const mapDispatchToProps = Object.assign(
  {},
  tasksActions,
  notificationActions
);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Tasks);
