<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TakeNote.Default" %>

<!DOCTYPE html>

<html ng-app="app">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Take Note</title>
    <script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controller.js"></script>
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/takenote.css" rel="stylesheet" />
    <link href='//fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span6" ng-controller="NotesCtrl">
                <h3>Notes</h3>
                <div class="row-fluid">
                    <input type="text" placeholder="Type a new note and click Add" class="span12" ng-model="newNote" />
                </div>
                <div class="row-fluid">
                    <a class="btn btn-primary span6" ng-click="addNote()"><i class="icon-plus icon-white"></i>Add</a>
                    <a class="btn btn-warning span6" ng-click="reloadNotes()"><i class="icon-refresh icon-white"></i>Reload</a>
                </div>
                <ul>
                    <li ng-repeat="note in notes">{{note}}</li>
                </ul>

                <div class="alert alert-error">This is all test and junk data. Nothing goes to any database and nothing is persisted</div>
            </div>

        </div>
    </div>
</body>
</html>
