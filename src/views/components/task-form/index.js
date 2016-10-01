/**
 * Created by mike on 9/22/2016.
 */
import React, { Component, PropTypes, List } from 'react';
import { Task } from './../../../core/tasks';
import CMMAc from './../autosuggest/index';
import MUIAutoComplete from 'material-ui/AutoComplete';
import Form from 'muicss/lib/react/form';
import TextField from 'material-ui/TextField';
import Paper from 'material-ui/Paper';
import RaisedButton from 'material-ui/RaisedButton';

import { firebaseDb } from './../../../core/firebase';

const paperStyle = {
  margin: 20,
  padding:5,
  textAlign: 'left',
  display: 'inline-flex',
};
const inputStyle = {
  paddingLeft:7
};
class TaskForm extends Component {
  static propTypes = {
    createTask: PropTypes.func.isRequired,
    task: PropTypes.instanceOf(Task),
    updateTask: PropTypes.func,
    editing: PropTypes.bool,
    employees: PropTypes.array,
    services: PropTypes.array,
    jobs: PropTypes.array,
    billingRateLevels: PropTypes.array
  };
  
  constructor(...props) {
    super(...props);
    
    this.state = {
      employee: '',
      service: '',
      job: '',
      note: '',
      time: '',
      editing:false,
      title:'',
      name:'',
      value:''
    };
    this.handleChange = this.handleChange.bind(this);
    this.onChange = this.onChange.bind(this);
    this.onSubmit = this.onSubmit.bind(this);
    this.onKeyUp = this.onKeyUp.bind(this);
  }
  shouldComponentUpdate(nextProps, nextState) {
    return nextState !== this.state;
  }
  clearInput() {
    this.serviceinput.state.value='';
    this.serviceinput.state.suggestions=[];
    this.jobinput.state.value='';
    this.jobinput.state.suggestions=[];
    this.employeeinput.searchText='';
    //this.employeeinput.state.suggestions=[];
    this.setState({
                    time: '',
                    employee: '',
                    service: '',
                    job: '',
                    note: ''
                  });
    
    // this.employeeinput = null;
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

  
  handleChange(name){
    
console.debug(name);
    switch(name) {
      case "Service":
        this.setState = ({service: name.value});
        break;
      case "Employee":
        this.setState({employee: name.value});
        break;
      case "Job":
        this.setState({job: name.value});
        break;
      default:
        break;
    }
  }
  onChange(event) {
    console.debug("event name: " + event.target.name + " eventValue: " + event.target.value);
    switch(event.target.id) {
      case "Note":
        this.setState({note: event.target.value});
        break;
      case "Time":
        this.setState({time: event.target.value});
        break;
      default:
        break;
    }
  }
  onKeyUp(event) {
    if (event.keyCode === 27) {
      switch(event.target.name) {
        case "Service":
          this.setState({service: ''});
          break;
        case "Employee":
          this.setState({employee: ''});
          break;
        case "Job":
          this.setState({job: ''});
          break;
        case "Note":
          this.setState({note: ''});
          break;
        case "Time":
          this.setState({time: 0});
          break;
        default:
          break;
      }
    }
  }
  // createTask(employee, job, service, time, note)
  onSubmit(event) {
    event.preventDefault();
    console.log(this.state.note+this.state.time+this.state.employee+this.state.service+this.state.job);
    console.log('submit job is set? '+ this.state.job?'yes':'no');
    
        if (this.state.time > 0) {
          this.props.createTask(this.state.employee, this.state.job, this.state.service, this.state.time, this.state.note);
          this.clearInput();
        }
  }
  render() {
    let dataSourceConfig = {
      text: 'name',
      value: 'name',
    };
    return (

<Paper style={paperStyle} zDepth={1}>
  <Form noValidate onSubmit={this.onSubmit}>
  <MUIAutoComplete
    floatingLabelText="Employee"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.employees }
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={25}
    ref={ (ref) => this.employeeinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeEmployee.bind(this)}
    name="Employee"
    id="Employee"
    fullWidth={ true }
    searchText={this.state.employee}
  />
      <MUIAutoComplete
    name="Service"
    floatingLabelText="Service"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.services}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={ 50 }
    ref={ (ref) => this.serviceinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeService.bind(this)}
    id="Service"
    fullWidth={ true }
    searchText={this.state.service}
      />
      <MUIAutoComplete
    floatingLabelText="Customer/Job"
    filter={MUIAutoComplete.fuzzyFilter}
    dataSource={this.props.jobs}
    dataSourceConfig={dataSourceConfig}
    maxSearchResults={50}
    ref={ (ref) => this.jobinput = ref}
    openOnFocus={true}
    onNewRequest={this.handleChangeJob.bind(this)}
    name="Job"
    id="Job"
    fullWidth={ true }
    searchText={this.state.job}
      />
      <TextField
          id="Note"
          fullWidth={true}
          autoComplete="off"
          className="Note"
          maxLength="256"
          onChange={this.onChange}
          onKeyUp={this.onKeyUp}
          placeholder="Note"
          type="text"
          name="Note"
          value={this.state.note}
        />
        <TextField
          id="Time"
          name="Time"
          autoComplete="off"
          className="Time"
          maxLength="1"
          onChange={this.onChange}
          onKeyUp={this.onKeyUp}
          placeholder="Time"
          type="number"
          value={this.state.time}
        /><br/>
        <RaisedButton type="submit" onChange="" label="Submit" style={paperStyle}></RaisedButton></Form></Paper>
    );
  }
}

export default TaskForm;

//
//<CMMAc id="Employee" name="Employee" handleChange={this.handleChange} handleKeyUp={this.onKeyUp} value={this.state.employee} ref={ (ref) => this.employeeinput = ref}/>
//<CMMAc id="Service" name="Service" handleChange={this.handleChange} handleKeyUp={this.onKeyUp} value={this.state.service} ref={ (ref) => this.serviceinput = ref}/>
//<CMMAc id="Job" name="Job" handleChange={this.handleChange} handleKeyUp={this.onKeyUp} value={this.state.job} ref={ (ref) => this.jobinput = ref}/>
