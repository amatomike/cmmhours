/**
 * Created by mike on 9/22/2016.
 */
import React, { Component, PropTypes, List } from 'react';
import { Task } from './../../../core/tasks';
import CMMAc from './../autosuggest/index';
import Form from 'muicss/lib/react/form';
import { CMMData } from './../../../core/cmmdata';
import { cmmDataList } from './../../../core/cmmdata/cmmdata-lists';
class TaskForm extends Component {
  static propTypes = {
    createTask: PropTypes.func.isRequired,
    task: PropTypes.instanceOf(Task),
    updateTask: PropTypes.func,
    editing:PropTypes.bool,
    cmmDataList:PropTypes.instanceOf(List)
  };
  
  constructor(props, context) {
    super(props, context);
    
    this.state = {
      employee: '',
      service: '',
      job: '',
      note: '',
      time: 0,
      editing:false,
    };
    
    this.onChange = this.onChange.bind(this);
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
    this.employeeinput.state.value='';
    this.employeeinput.state.suggestions=[];
    this.setState({
                    time: 0,
                    employee: '',
                    service: '',
                    job: '',
                    note: ''
                  });
    
    // this.employeeinput = null;
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
  onChange(event) {
    switch(event.target.name) {
      case "Note":
        this.setState({note: event.target.value});
        break;
      case "Time":
        this.setState({time: event.target.value});
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
      }
    }
  }
  // createTask(employee, job, service, time, note)
  onSubmit(event) {
    event.preventDefault();
    console.log(this.state.note.trim()+this.state.time);
    console.log('submit job is set? '+ this.state.job?'yes':'no');
    
    const job = this.state.job.trim();
    
    if (this.state.service.trim().length > 0) {
      if (job.length > 0) {
        if (this.state.time > 0) {
          this.props.createTask(this.state.employee, this.state.job, this.state.service, this.state.time, this.state.note)
          this.clearInput();
        }
      }
    }
  }
  
  render() {
    return (
      <Form noValidate onSubmit={this.onSubmit.bind(this)}>
        <CMMAc id="Employee" name="Employee" handleChange={this.handleChange} handleKeyUp={this.onKeyUp.bind(this)} value={this.state.employee} ref={ (ref) => this.employeeinput = ref .bind(this)}/>
        <CMMAc id="Service" name="Service" handleChange={this.handleChange} handleKeyUp={this.onKeyUp.bind(this)} value={this.state.service} ref={ (ref) => this.serviceinput = ref .bind(this)}/>
        <CMMAc id="Job" name="Job" handleChange={this.handleChange} handleKeyUp={this.onKeyUp.bind(this)} value={this.state.job} ref={ (ref) => this.jobinput = ref .bind(this)}/>
        <input
          id="Note"
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
        <label className="Time" >Hours</label>
        <input
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
        />
        <button type="submit" onChange="">Submit</button></Form>
    );
  }
}

export default TaskForm;
