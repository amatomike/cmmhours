import React, { PropTypes } from 'react';
import { List } from 'immutable';
import TaskItem from './../task-item';
import { List as MuiList } from 'material-ui/List'


function TaskList({deleteTask, tasks, updateTask, employees, services, jobs}) {
  let taskItems = tasks.map((task, index) => {
    return (
      <TaskItem
    employees={employees}
    services={services}
    jobs={jobs}
        deleteTask={deleteTask}
        key={index}
        task={task}
        updateTask={updateTask}
      />
    );
  });

  return (
    <div className="task-list">
      {taskItems}
    </div>
  );
}

TaskList.propTypes = {
  deleteTask: PropTypes.func.isRequired,
  tasks: PropTypes.instanceOf(List).isRequired,
  updateTask: PropTypes.func.isRequired,
  employees: PropTypes.array,
  jobs: PropTypes.array,
  services: PropTypes.array
};

export default TaskList;
