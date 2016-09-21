<?php
class cmmWorkEntry
{
public $names;
public $types;
public $jobs;
public $descriptions;

    /**
     * @param mixed $names
     * @return cmmWorkEntry
     */
    public function setNames($names)
    {
        $this->names = $names;
        return $this;
    }

    /**
     * @param mixed $types
     * @return cmmWorkEntry
     */
    public function setTypes($types)
    {
        $this->types = $types;
        return $this;
    }

    /**
     * @param mixed $jobs
     * @return cmmWorkEntry
     */
    public function setJobs($jobs)
    {
        $this->jobs = $jobs;
        return $this;
    }

    /**
     * @param mixed $descriptions
     * @return cmmWorkEntry
     */
    public function setDescriptions($descriptions)
    {
        $this->descriptions = $descriptions;
        return $this;
    }

    /**
     * @return mixed
     */
    public function setupEntries($arr, $keys)
    {
        foreach ($keys as $key) {
        $function = "set".strtoupper(strchr())
        }}
    public function __construct($cmmData)
    {
        setupEntryArrays($cmmData, array_keys($cmmData));

        }



}

$keys=['types'=>'type','names'=>'name','jobs'=>'job','descriptions'=>'description'];
$keyEntries=array('type'=>'types','name'=>'names','job'=>'jobs','description'=>'descriptions');
$jsonfile = "assets/json/cmmdata.new.json";
$dataFromFile = file_get_contents($jsonfile);
$cmmdata = json_decode($dataFromFile,TRUE);
$cmmEntry = new cmmWorkEntry;
$cmmEntry->setupArray($cmmdata);
//$handlefile = fopen($jsonfile, 'w');
function setupEntryArrays($){

}
function loadDataFromFile(){
    $data = json_decode(file_get_contents('assets/json/cmmdata.new.json',TRUE));
    return $data;
}
function writeToFile($data){
    $out = file_put_contents('assets/json/cmmdata.new.json',$data);
    return $out>0?true:false;
}
function getTypeArr($arr, $type){
    return $arr[$type];
}
function checkQueryData($q,$arr){
    $searchArr=array();
    $added = 0;
    foreach (array_values($arr) as $v) {
        if (stripos($v, $q) !== false) {
            array_push($searchArr, $v);
        }
    }
    return $searchArr;
}
function checkForNewEntries($q,$arr){
    $searchArr=array();
    $added = 0;
    foreach (array_values($arr) as $v) {
        if (stripos($v, $q) !== false) {
            return 1;
        }
    }
    return 0;
}
function siteHeader()
{
    $header = '
<!DOCTYPE HTML>
<html lan="en">
<head>
<meta charset="utf-8" />
<script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/typeahead.bundle.min.js"></script>
<link href="assets/css/cmmform.css" rel="stylesheet"/> 
<link href="assets/css/paper.min.css" rel="stylesheet"/>
</head>
<body>
';
    return $header;
}
function cmmform(){
    $form =
        '"<div class="container outsidecontainer">
    <div class="centered-form">
                    <form role="form">
                           <div class="form-group">
                                <input id="cmmnames" type="text" class="cmmInput form-control" placeholder="Your Name" autocomplete="off" />
                            </div>                             
                            <div class="form-group">
                                 <input id="cmmjobs" type="text" class="cmmInput form-control" placeholder="Job or Site Name" autocomplete="off" />
                            </div>
                            <div class="form-group">
                                  <input id="cmmtypes" type="text" class="cmmInput form-control" placeholder="Task\work done" autocomplete="off" />
                            </div>
                            <div class="form-group">
                                  <input id="cmmtime" type="number" class="cmmInput form-control" placeholder="Hours on task" autocomplete="off" />
                            </div>
                            <div class="form-group">
                                   <input id="cmmdescriptions" type="text" class="cmmInput form-control" placeholder="description\notes" autocomplete="off" />
                                   </div>
                            <div class="form-group"> 
                                    <input type="button" value="Add Task" class="addTask btn btn-lg btn-primary"
                                     onclick="addTaskToContainer(document.getElementById(\'cmmnames\').value, document.getElementById(\'cmmjobs\').value, document.getElementById(\'cmmtypes\').value, document.getElementById(\'cmmtime\').value, document.getElementById(\'cmmdescriptions\').value)"/>
                                     </div> 

                    </form>
                </div>
                <div class="container">
                    <input type="button" value="Send Report" class="btn btn-lg btn-primary" onclick="sendReport()">
                </div>
                <div class="taskContainer"> 
          </div>
    </div>
<script type="text/javascript">
var names = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace(\'name\'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  async: true,
    prefetch: "./index.php?type=names",
  remote: {
      url: "./index.php?type=names&q=%Q",
      wildcard:"%Q"
  }
});

$(\'#cmmnames\').typeahead(null, {
  name: "names",
  source: names,
  displayKey: \'name\',
  async: true,
  limit: 30
});

var jobs = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace(\'job\'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  async: true,
  prefetch: "./index.php?type=jobs",
    remote: {
      url: "./index.php?type=jobs&q=%Q",
      wildcard:"%Q"
  }
});
$(\'#cmmjobs\').typeahead(null, {
  name: "jobs",
  source: jobs,
  displayKey:\'job\',
  async: true,
  limit: 12
});
var types = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace(\'type\'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  async: true,
  prefetch: "./index.php?type=types",
  remote: {
      url: "./index.php?type=types&q=%Q",
      wildcard:"%Q"
  }
});
$(\'#cmmtypes\').typeahead(null, {
  name: "types",
  source: types,
  limit: 30,
  async: true,
  displayKey: \'type\'
});
var descriptions = new Bloodhound({ 
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace(\'description\'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  async: true,
  remote: {
      url: "./index.php?type=descriptions&q=%Q",
      wildcard:"%Q"
      }
});

$(\'#cmmdescriptions\').typeahead(null, {
  name: "descriptions",
  source: descriptions,
  limit: 30,
  async: true,
  displayKey: \'description\'

});
var taskNum = 0;
var tasksarr = [];
var reportArr = ["reports"];
function removeTask(event){
    $(this).animate({
        opacity: \'0\'
    }, 400, function(){
        $(this).animate({
            margin: \'10px 0\',
            width: 0
        }, 400, function(){
            $(this).remove();
        });
    });
}
function openTaskElement(event){
}
$(\'.taskElement\').bind("click", openTaskElement());

function addTaskToContainer(aname,ajob,atype,atime,adescription){

    var newTask;
    newTask = { name:aname , job: ajob , type:atype, description:adescription };
    tasksarr.push(newTask);
    taskNum = tasksarr.length; 
    var taskPanel = \'<div class="panel panel-default"><strong>Task \'+taskNum+\'</strong><div class="panel-heading"><h3 class="panel-title">Job: \'+ajob+\'</h3> <strong>Hours: </strong>\'+atime+\'</div>  <div class="panel-body"><h3><strong>Work: </strong></h3>\'+atype+\'<br><br><div class="itemDescription"><strong>notes: </strong>\'+adescription+\'</div></div></div>\';    
	var taskBox = $(\'<div>\',{ class: "taskItem taskItem"+taskNum });
	taskBox.append(taskPanel);
console.log(newTask);
	taskBox.bind("mouseenter", openTaskElement);
    $(\'.taskContainer\').append(taskBox);

}
function sendReport() {

    var postdata;
    postdata = "{ report:tasksarr }";
    
    var request;
    // Abort any pending request
    if (request) {
        request.abort();
    }
    // setup some local variables

    // Fire off the request to /form.php
    request = $.ajax({
        url: "index.php",
        type: "post", 
        data: JSON.stringify({ report: tasksarr}), 
        contentType: "application/json; charset=utf-8"
    }); 
 
    // Callback handler that will be called on success
    request.done(function (response, textStatus, jqXHR){
        // Log a message to the console
        console.log(response);
    });

    // Callback handler that will be called on failure
    request.fail(function (jqXHR, textStatus, errorThrown){
        // Log the error to the console
        console.error(
            "The following error occurred: "+
            textStatus, errorThrown
        );
    });

    // Callback handler that will be called regardless
    // if the request failed or succeeded
    request.always(function () {});

    // Prevent default posting of form
}
</script>"';

    return $form;
}
function siteFooter(){
    $footer = '</body></html>';
    return $footer;}
function loadHtml($content){
    $web = siteHeader().$content.siteFooter();
    return $web;
}

if ($_GET['type'])
{
    $type = $_GET['type'];
    $typeArr = getTypeArr($cmmdata, $type);
    if ($_GET['q']){
        $query = $_GET['q'];
        $typeArr = checkQueryData($query,$typeArr);
        echo '{"count:"'.count($typeArr).'}"';
    }
    $json = json_encode($typeArr,JSON_PRETTY_PRINT);
    header('Content-Type: application/json',true);
    echo $json;
}
elseif ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $newCmm= $cmmdata;
    echo json_encode($cmmdata,JSON_PRETTY_PRINT);
    $inputJSON = file_get_contents('php://input');
    $input= json_decode($inputJSON, TRUE); //convert JSON into array
    $lastEntry = "";
    foreach ($input['report'] as $report){
            foreach ($report as $entry) {
                if ($entry !== $lastEntry) {
                    foreach ($entry as $entryKey => $entryValue) {

                    echo "  key : " . $entryKey;
                    echo "  : ";
                    echo "  value : " . $entryValue . "
                ";

                    $dataType = $keyEntries[$entryKey];

                    $exists = checkForNewEntries($entryValue, $cmmdata[$dataType]);
                    if ($exists===false) {
                        $newEntry = [$entryKey => $entry[$entryKey]];
                        array_push($cmmdata[$dataType], $newEntry);
                        $checkedValue = $entry[$entryKey];
                        $lastKey = $entryKey;
                        array_push($entryArr, $newEntry);
                        echo "pushed :" . json_encode($newEntry) . "     
                    ";

                    }
                }
            }
            $lastEntry = $entry;
        }
        }


    writeToFile(json_encode($cmmdata,JSON_PRETTY_PRINT));
    $cmmdata = loadDataFromFile();
    echo json_encode($cmmdata,JSON_PRETTY_PRINT);
    die;
}else
{
    echo loadHtml(cmmform());

}
?>
