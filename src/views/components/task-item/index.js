import classNames from 'classnames';
import React, { Component, PropTypes } from 'react';
import { Task } from './../../../core/tasks';
import { ListItem } from 'material-ui/List'
import Paper from 'material-ui/Paper'
import Subheader from 'material-ui/Subheader'
import CMMAc from './../autosuggest/index';
import {Card, CardActions, CardHeader, CardText} from 'material-ui/Card';
import FlatButton from 'material-ui/FlatButton';
import RaisedButton from 'material-ui/RaisedButton';
import TextField from 'material-ui/TextField';
import FloatingActionButton from 'material-ui/FloatingActionButton';
import CheckCircleIcon from 'material-ui/svg-icons/action/check-circle';
import DeleteIcon from 'material-ui/svg-icons/action/delete';
import EditIcon from 'material-ui/svg-icons/image/edit'
import MUIAutoComplete from 'material-ui/AutoComplete';
import cmmdata from '../autosuggest/cmmdata.js';
import SvgIcon from 'material-ui/SvgIcon';
import {blue500, red500, greenA200} from 'material-ui/styles/colors';
import Divider from 'material-ui/Divider';
//const muiTheme = getMuiTheme(darkBaseTheme);

const paperStyle = {
  margin: 10,
  textAlign: 'center',
  display: 'inline-block',
};
const inputStyle = {
  margin: 10,
  paddingLeft:10,
  paddingRight:10
};

class TaskItem extends Component {
  static propTypes = {
    deleteTask: PropTypes.func.isRequired,
    task: PropTypes.instanceOf(Task).isRequired,
    updateTask: PropTypes.func.isRequired,
    editing: PropTypes.bool,
    loadTaskForEditing: PropTypes.func,
    taskToEdit: PropTypes.instanceOf(Task),
    employees: PropTypes.array,
    jobs: PropTypes.array,
    services: PropTypes.array
  };
  
  constructor(props, context) {
    super(props, context);
    const task = this.props.task;
  
    this.state = {
                    time: task.time,
                    employee: task.employee,
                    service: task.service,
                    job: task.job,
                    note: task.note,
                    editing: false
                  };
    
    this.delete = this.delete.bind(this);
    this.editTask = this.editTask.bind(this);
    this.saveTask = this.saveTask.bind(this);
    this.stopEditing = this.stopEditing.bind(this);
    this.toggleStatus = this.toggleStatus.bind(this);
    this.onKeyUp = this.onKeyUp.bind(this);
    // this.onChange = ::this.onChange;
  }
  static escapeRegexCharacters(str) {
    return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  }
  
  shouldComponentUpdate(nextProps, nextState) {
    return nextProps.task !== this.props.task || nextState.editing !== this.state.editing;
  }
  
  delete() {
    this.props.deleteTask(this.props.task);
  }
  
  editTask() {
    const task = this.props.task;
    
    this.setState({
                    time: task.time,
                    employee: task.employee,
                    service: task.service,
                    job: task.job,
                    note: task.note,
                    editing: true
                  });
    
  }
  
  saveTask(event) {
    const { task } = this.props;
    const taskstate=this.state;
    this.props.updateTask(task, {service: taskstate.service });
    // this.setState({service: event.target.value});
    this.props.updateTask(task, {employee: taskstate.employee });
    // this.setState({employee: event.target.value});
    this.props.updateTask(task, {note: taskstate.note });
    // this.setState({note: event.target.value});
    this.props.updateTask(task, {job: taskstate.job });
    // this.setState({job: event.target.value});
    this.props.updateTask(task, {time: taskstate.time });
    // this.setState({time: event.target.value});
    this.stopEditing();
    
  }
  handleChange(name, newvalue){
    switch(name) {
      case "Service":
        this.setState({service: newvalue});
        break;
      case "Employee":
        this.setState({employee: newvalue});
        break;
      case "Job":
        this.setState({job: newvalue});
        break;
    }
  }
  // onTimeChange = (event) => {
  //   console.log(event.target.name+event.target.value);
  //   this.state.time=event.target.value;};
  // onNoteChange = (event) => {
  //   console.log(event.target.name+event.target.value);
  //   this.setState({note: event.target.value});
  // };
  handleOnChange(event) {
    const name = event.target.id;
    const value = event.target.value;
    switch(name) {
      case "Note":
        this.setState({note: value});
        break;
      case "Time":
        this.setState({time: value});
        break;
      default:
        break;
    }
    console.log("default change - "+event.target.name+" vale: "+event.target.value);
    
  }
  stopEditing() {
    this.setState({editing: false});
    
  }
  handleChangeEmployee(name, index){
    this.setState({employee: name.name});
  }
  handleChangeService(name, index){
    this.setState({service: name.name});
  }
  handleChangeJob(name, index){
    this.setState({job: name.name});
  }
  handleChangeNote(name, index){
    this.setState({job: name.name});
  }
  handleChangeTime(name, index){
    this.setState({job: name.name});
  }
  
  toggleStatus() {
    let checked = !this.props.task.completed;
    this.props.updateTask(this.props.task, {completed: checked});
  }
  
  onKeyUp(event) {
    if (event.keyCode === 13) {
      //enter
      this.saveTask(event);
    }
    else if (event.keyCode === 27) {
//esc
      this.stopEditing();
    }
  }
  static getNames(data) {
    var kvArray = [{key:1, value:10}, {key:2, value:20}, {key:3, value: 30}];
    var reformattedArray = data.map(function(obj){
      var rObj = [];
      rObj.push = obj.name;
      return rObj;
    });
  }
  renderTaskCard(task) {
    const style = {
      marginRight: 20,
    };
    const iconStyles = {
      marginRight: 24,
    };
    
    const EditSVGIcon = (props) => (
      <SvgIcon {...props}>
        <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z" />
        
        {/*<path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z" />*/}
      </SvgIcon>
    );
    
    const EditSVG = () => (
      <div>
        <EditSVGIcon style={iconStyles} color={red500} hoverColor={greenA200} viewBox="0 0 24 24"/>
      </div>
    );
    var employeenames = cmmdata.employees.map(function(a) {return a.name;});
    const { editing } = this.state;
    // const { task } = this.props;
    const dataSourceConfig = {
      text: 'name',
      value: 'name',
    };
    return (
      <div className="bigDiv">
        <Card style={paperStyle} zDepth={3}>
          <CardHeader
            title={"Hours: " + task.time +" @ "+ "Job: "+ task.job}
            subtitle={"Service: "+task.service}
            actAsExpander={true}
            showExpandableButton={true}
          />
          <CardActions>
            <div>
           <span>
              <FloatingActionButton style={style} onClick={this.editTask.bind(this)}
  >
                <EditIcon />
              </FloatingActionButton>
              <FloatingActionButton style={style} aria-hidden={editing}
                                    aria-label="Delete task"
                                    onClick={this.delete}
                                    ref={c => this.deleteButton = c}>
                    <DeleteIcon/>
              </FloatingActionButton>
              <FloatingActionButton style={style} aria-hidden={editing}
                                    aria-label="Mark task as completed"
                                    onClick={this.toggleStatus.bind(this)}
                                    ref={c => this.toggleStatusButton = c}>
    {this.props.task.completed?<CheckCircleIcon/>:<DeleteIcon/>}
              </FloatingActionButton>
          </span>
            </div>
          </CardActions>
          <CardText expandable={true}>
            {task.note}<br/>

      <Paper style={paperStyle}>
      <MUIAutoComplete
 style={inputStyle}
    floatingLabelText="Employee"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.employees }
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={25}
    ref={ (ref) => this.employeeinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeEmployee.bind(this)}
    hintText="Employee"
    id="Employee"
    searchText={this.state.employee}
  /><br/>
    <MUIAutoComplete
 style={inputStyle}
    hintText="Service"
    floatingLabelText="Service"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.services}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={ 50 }
    ref={ (ref) => this.serviceinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeService.bind(this)}
    id="Service"
    searchText={this.state.service}

  /><br/>
    <MUIAutoComplete
  style={inputStyle}
    floatingLabelText="Customer/Job"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.jobs}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={50}
    ref={ (ref) => this.jobinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeJob.bind(this)}
    hintText="Job"
    id="Job"
    searchText={this.state.job}

  /><br/>
    <TextField
    style={inputStyle}
    id="Note"
    autoComplete="off"
    className="Note"
    maxLength="256"
    onChange={this.handleChange.bind(this)}
    onKeyUp={this.onKeyUp}
    placeholder="Note"
    type="text"
    name="Note"
    value={this.state.note}
  /><br/>
    <TextField
    style={inputStyle}
    id="Time"
    name="Time"
    autoComplete="off"
    className="Time"
    maxLength="1"
    onChange={this.handleChange.bind(this)}
    onKeyUp={this.onKeyUp}
    placeholder="Time"
    type="number"
    value={this.state.time}
  /><br/>
    <RaisedButton type="submit" onTouchTap={this.saveTask} label="Submit" style={paperStyle} onSubmit={this.saveTask}></RaisedButton></Paper>
          </CardText>
        </Card>
      </div>
    );
  }
  renderTask(task) {
    let dataSourceConfig = {
      text: 'name',
      value: 'name',
    };
    return (<div className="task-form">
        <Paper style={paperStyle}>
      <MUIAutoComplete
  style={inputStyle}
    floatingLabelText="Employee"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.employees }
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={25}
    ref={ (ref) => this.employeeinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeEmployee.bind(this)}
    hintText="Employee"
    id="Employee"
    searchText={this.state.employee}
  /><br/>
  <MUIAutoComplete
  style={inputStyle}
    hintText="Service"
    floatingLabelText="Service"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.services}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={ 50 }
    ref={ (ref) => this.serviceinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeService.bind(this)}
    id="Service"
    searchText={this.state.service}

  /><br/>
      <MUIAutoComplete
  style={inputStyle}
    floatingLabelText="Customer/Job"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.jobs}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={50}
    ref={ (ref) => this.jobinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeJob.bind(this)}
    hintText="Job"
    id="Job"
    searchText={this.state.job}

  /><br/>
      <TextField
    id="Note"
    autoComplete="off"
    className="Note"
    maxLength="256"
    onChange={this.handleChange.bind(this)}
    onKeyUp={this.onKeyUp}
    placeholder="Note"
    type="text"
    name="Note"
    style={inputStyle}
    value={this.state.note}
  /><br/>
  <TextField
    style={inputStyle}
    id="Time"
    name="Time"
    autoComplete="off"
    className="Time"
    maxLength="1"
    onChange={this.handleChange.bind(this)}
    onKeyUp={this.onKeyUp}
    placeholder="Time"
    type="number"
    value={this.state.time}
  /><br/>
    <RaisedButton type="submit" onTouchTap={this.saveTask} label="Submit" style={paperStyle} onSubmit={this.saveTask}></RaisedButton></Paper></div>
    
    );
  }
  
  render() {
    const { editing } = this.state;
    const { task } = this.props;
    
    return (
      // <div className={classNames('task-item', {'task-item--completed': task.completed, 'task-item--editing': editing})} tabIndex="0">
      //   <div className="cell">
      //     <button
      //       aria-hidden={editing}
      //       aria-label="Mark task as completed"
      //       className={classNames('btn task-item__button', {'hide': editing})}
      //       onClick={this.toggleStatus}
      //       ref={c => this.toggleStatusButton = c}
      //       type="button">
      //       <svg className={classNames('icon', {'icon--active': task.completed})} width="24" height="24" viewBox="0 0 24 24">
      //         <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z" />
      //       </svg>
      //     </button>
      //   </div>
      
      <div className="cell">
        {editing ? this.renderTask(task) : this.renderTaskCard(task)}
      </div>
      //
      //   <div className="cell">
      //     <button
      //       aria-hidden={!editing}
      //       aria-label="Cancel editing"
      //       className={classNames('btn task-item__button', {'hide': !editing})}
      //       onClick={this.stopEditing}
      //       ref={c => this.cancelEditButton = c}
      //       type="button">
      //       <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
      //         <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" />
      //         <path d="M0 0h24v24H0z" fill="none"></path>
      //       </svg>
      //     </button>
      //     <button
      //       aria-hidden={editing}
      //       aria-label="Edit task"
      //       className={classNames('btn task-item__button', {'hide': editing})}
      //       onClick={this.editTask}
      //       ref={c => this.editButton = c}
      //       type="button">
      //       <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
      //         <path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z" />
      //       </svg>
      //     </button>
      //     <button
      //       aria-hidden={editing}
      //       aria-label="Delete task"
      //       className={classNames('btn task-item__button', {'hide': editing})}
      //       onClick={this.delete}
      //       ref={c => this.deleteButton = c}
      //       type="button">
      //       <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
      //         <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z" />
      //       </svg>
      //     </button>
      //   </div>
      // </div>
    );
  }
}

export default TaskItem;
/* import classNames from 'classnames';
 import React, { Component, PropTypes } from 'react';
 import { Task } from './../../../core/tasks';
 import { ListItem } from 'material-ui/List'
 import Paper from 'material-ui/Paper'
 import Subheader from 'material-ui/Subheader'
 
 
 class TaskItem extends Component {
 static propTypes = {
 deleteTask: PropTypes.func.isRequired,
 task: PropTypes.instanceOf(Task).isRequired,
 updateTask: PropTypes.func.isRequired
 };
 
 constructor(props, context) {
 super(props, context);
 
 this.state = {editing: false};
 
 this.delete = this.delete.bind(this);
 this.editTitle = this.editTitle.bind(this);
 this.saveTitle = this.saveTitle.bind(this);
 this.stopEditing = this.stopEditing.bind(this);
 this.toggleStatus = this.toggleStatus.bind(this);
 this.onKeyUp = this.onKeyUp.bind(this);
 }
 
 shouldComponentUpdate(nextProps, nextState) {
 return nextProps.task !== this.props.task ||
 nextState.editing !== this.state.editing;
 }
 
 delete() {
 this.props.deleteTask(this.props.task);
 }
 
 editTitle() {
 this.setState({editing: true});
 }
 
 saveTitle(event) {
 if (this.state.editing) {
 const { task } = this.props;
 const title = event.target.value.trim();
 
 if (title.length && title !== task.title) {
 this.props.updateTask(task, {title});
 }
 
 this.stopEditing();
 }
 }
 
 stopEditing() {
 this.setState({editing: false});
 }
 
 toggleStatus() {
 let checked = !this.props.task.completed;
 this.props.updateTask(this.props.task, {completed: checked});
 }
 
 onKeyUp(event) {
 if (event.keyCode === 13) {
 this.saveTitle(event);
 }
 else if (event.keyCode === 27) {
 this.stopEditing();
 }
 }
 
 renderTitle(task) {
 return (
 <Paper>
 <div
 className="task-item__title"
 ref={c => this.titleText = c}
 tabIndex="0">{task.title}
 </div></Paper>
 );
 }
 
 renderTitleInput(task) {
 return (
 <input
 autoComplete="off"
 autoFocus
 className="task-item__input"
 defaultValue={task.title}
 maxLength="64"
 onBlur={this.saveTitle}
 onKeyUp={this.onKeyUp}
 ref={c => this.titleInput = c}
 type="text"
 />
 );
 }
 
 render() {
 const { editing } = this.state;
 const { task } = this.props;
 
 return (
 <div className={classNames('task-item', {'task-item--completed': task.completed, 'task-item--editing': editing})} tabIndex="0">
 <div className="cell">
 <button
 aria-hidden={editing}
 aria-label="Mark task as completed"
 className={classNames('btn task-item__button', {'hide': editing})}
 onClick={this.toggleStatus}
 ref={c => this.toggleStatusButton = c}
 type="button">
 <svg className={classNames('icon', {'icon--active': task.completed})} width="24" height="24" viewBox="0 0 24 24">
 <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z" />
 </svg>
 </button>
 </div>
 
 <div className="cell">
 {editing ? this.renderTitleInput(task) : this.renderTitle(task)}
 </div>
 
 <div className="cell">
 <button
 aria-hidden={!editing}
 aria-label="Cancel editing"
 className={classNames('btn task-item__button', {'hide': !editing})}
 onClick={this.stopEditing}
 ref={c => this.cancelEditButton = c}
 type="button">
 <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
 <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" />
 <path d="M0 0h24v24H0z" fill="none"></path>
 </svg>
 </button>
 <button
 aria-hidden={editing}
 aria-label="Edit task"
 className={classNames('btn task-item__button', {'hide': editing})}
 onClick={this.editTitle}
 ref={c => this.editButton = c}
 type="button">
 <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
 <path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z" />
 </svg>
 </button>
 <button
 aria-hidden={editing}
 aria-label="Delete task"
 className={classNames('btn task-item__button', {'hide': editing})}
 onClick={this.delete}
 ref={c => this.deleteButton = c}
 type="button">
 <svg className="icon" width="24" height="24" viewBox="0 0 24 24">
 <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z" />
 </svg>
 </button>
 </div>
 </div>
 );
 }
 }
 
 export default TaskItem;
 */
