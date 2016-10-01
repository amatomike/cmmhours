import React, { Component, PropTypes } from 'react';
//import isMobile from 'ismobilejs';
import { firebaseDb } from './../../../core/firebase';
import Autosuggest from 'react-autosuggest';
//import { CMMData, getCmmDataList, getCmmData } from './../../../core/cmmdata/index';
//import { cmmDataList, employeesList, jobsList, servicesList } from './../../../core/cmmdata/cmmdata-lists';
//import { loadCmmData, loadCmmDataSuccess, setupNewCmmdata } from './../../../core/cmmdata/actions';

//import cmmdata from './cmmdata.js';
//const focusInputOnSuggestionClick = !isMobile.any;

var cmmDataObj = firebaseDb.ref('cmmdata/');
function getData() {
      firebaseDb.ref('cmmdata').once('value').then(snapshot=>cmmDataObj = snapshot.val());
  
}
export default class CmmAs extends Component {
    static propTypes = {
        name:PropTypes.string,
        value:PropTypes.string,
        handleChange:PropTypes.func,
        handleKeyUp:PropTypes.func,
        onSubmit:PropTypes.func
    };
    constructor(props) {
        super(props);
        this.state = {
            name:this.props.name,
            value: this.props.value,
            suggestions: [],
            employee:this.props.name,
            job:this.props.name,
            service:this.props.name
        };
      this.onChange = this.onChange.bind(this);
      this.onKeyUp = this.onKeyUp.bind(this);
      getData();
    }
    static escapeRegexCharacters(str) {
        return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    }
    getSuggestions(value) {
        if (value.length>0) {
            const escapedValue = CmmAs.escapeRegexCharacters(value.trim());

            if (escapedValue === '') {
                return [];
            }
            
            console.debug();

            const regex = new RegExp('.*' + escapedValue, 'i');
            
            var cmmobj = cmmDataObj;
            switch (this.props.name) {
                case "Service":
                    cmmobj = cmmDataObj.service_item_list;
                    break;
                case "Employee":
                    cmmobj = cmmDataObj.employees;
                    break;
                case "Job":
                    cmmobj = cmmDataObj.jobs;
                    break;
                case "billing_rate_level":
                    cmmobj = cmmDataObj.billing_rate_level;
                    break;
                case "payroll_items":
                    cmmobj = cmmDataObj.payroll_items;
                    break;
                case "wc_list":
                    cmmobj = cmmDataObj.wc_list;
                    break;
                default:
                  break;
            }
            return cmmobj.filter(cmmobj => regex.test(cmmobj.name));
        }
    };

    onSuggestionsClearRequested = () => {
        this.setState({
            suggestions: []
        });
    };

    static getSuggestionValue(suggestion) {
        return suggestion.name;
    }

    static renderSuggestion(suggestion) {
        return (
            <span>{suggestion.name}</span>
        );
    }

    onChange = (event, { newValue }) => {
        this.setState({
            value: newValue
        });
        this.props.handleChange(this.props.name,newValue);

        // this.props.handleChange(this.props.name, newValue);

    };
    onKeyUp(event) {
            this.props.handleKeyUp(event);
        }
    onSuggestionsFetchRequested = ({ value }) => {
        this.setState({
            suggestions: this.getSuggestions(value)
        });
    };
  
    render() {
        const { value, suggestions } = this.state;
        const inputProps = {
            value,
            onChange:this.onChange.bind(this),
            onKeyUp:this.onKeyUp.bind(this),
            name:this.props.name,
            className:this.props.name,
            placeholder:this.props.name,
            onSubmit:this.props.onSubmit
        };

        return (
                    <Autosuggest
                        className={this.props.name}
                        suggestions={suggestions}
                        onSuggestionsFetchRequested={this.onSuggestionsFetchRequested.bind(this)}
                        onSuggestionsClearRequested={this.onSuggestionsClearRequested.bind(this)}
                        getSuggestionValue={CmmAs.getSuggestionValue}
                        renderSuggestion={CmmAs.renderSuggestion}
                        inputProps={inputProps}
                         />
        );
    }
}
