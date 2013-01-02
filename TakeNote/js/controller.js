function NotesCtrl($http, $scope) {
    $scope.notes = [];

    $scope.reloadNotes = function () {
        loadNotes();
    };

    $scope.addNote = function () {
        $scope.notes.push($scope.newNote);
        $scope.newNote = '';
    };

    function loadNotes() {
        $scope.newNote = '';

        $http.get('api/takenote/getnotes').success(function (data) {
            $scope.notes = data;
        });
    }

    loadNotes();
}