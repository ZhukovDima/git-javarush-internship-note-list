//Note to self: Javascript is very very tricky. Maybe avoid it in the future? My first angular

var app = angular.module('node-list', ['ngRoute']);

app.config(function ($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "views/nodeList.jsp",
            controller: "HomeController",
            controllerAs: "homeController"
        })
        .when("/addNote", {
            templateUrl: "views/addNote.jsp",
            controller: "NoteController",
            controllerAs: "noteController"
        })
        .when("/editNote/:id/", {
            templateUrl: "views/addNote.jsp",
            controller: "NoteController",
            controllerAs: "noteController"
        })
        .otherwise({
            redirectTo: "/"
        });
});

// Main controller controls the whole page, works on /
app.controller("HomeController", function($scope, NoteService, $rootScope) {

    var that = this;

    that.notes = [];

    NoteService.getNotes().then(function(result) {
        that.notes = result;
        $rootScope.notes = result;  //so that NoteService have an access that.notes to search by id. Probably not the best way, but i coudn't figure out a better way
    });

    that.removeItem = function(entry) {
        NoteService.remove(entry);
    };

    that.sortKey = 'dateEntered';
    that.reverse = true;

    that.sort = function(){
        console.log($rootScope.notes);
        that.reverse = !that.reverse;
    };

    that.execute = function(entry) {
        NoteService.execute(entry);
    }

});

app.controller("NavTabController", function() {
    var that = this;

    that.tab = 1;

    that.setTab = function (newTab) {
        that.tab = newTab;
    };

    that.isSet = function (tabNum) {
        return that.tab === tabNum;
    };
});

//custom pagination, another 'invented bike', clearly not the best solution, but it does the trick for learning purpose
app.controller("PaginationController", function() {
    var that = this;

    that.currentPage = 0;
    that.pageSize = 10;

    that.setCurrentPage = function(currentPage) {
        that.currentPage = currentPage;
    };

    that.range = function(min, max, step) {
        step = step || 1;
        max =  Math.ceil(max / that.pageSize);
        var input = [];
        for (var i = min; i <= max; i += step) {
            input.push(i);
        }
        return input;
    };
});

app.controller('NoteController', function ($scope, NoteService, $routeParams) {

    var that = this;
    that.note = {};

    if ($routeParams.id) {
        that.note = NoteService.getNoteById(parseInt($routeParams.id));
    }

    that.save = function() {
        NoteService.save(that.note);
    };
});

// Operations on notes
app.factory('NoteService', function($http, $location, $rootScope) {

    var getNotes = function() {
        return $http({method: "GET", url: "getNotes"}).then(function (result) {
            return result.data;
        })
    };

    var save = function(entry) {

        var updatedNote = getNoteById(entry.id);
        var path = '';

        if (updatedNote) {
            updatedNote.text = entry.text;
            path = 'updateNote';
        } else {
            updatedNote = entry;
            path = 'addNote';
        }

        $http.post(path, updatedNote)
            .then(function(data) {
                $location.path("/");
            });
    };

    var remove = function(entry) {
        $http({method: "DELETE", url: "deleteNote/" + entry.id})
            .then(function(result) {
                var index = $rootScope.notes.indexOf(entry);
                $rootScope.notes.splice(index, 1)
            });

    };

    var execute = function(entry) {
        var updatedNote = getNoteById(entry.id);
        updatedNote.executed = true;

        $http.post('updateNote', updatedNote)
            .then(function(data) {
                $location.path("/");
            });
    };

    // faster than search by id in $rootScope.notes = HomeController.notes, than in database
    var getNoteById = function(id) {
        for (var i = 0; i < $rootScope.notes.length; i++) {
            if ($rootScope.notes[i].id === parseInt(id)) {
                return $rootScope.notes[i];
            }
        }
    };

   return {getNotes: getNotes, save: save, remove: remove, getNoteById: getNoteById, execute: execute};
});


app.filter('startFrom', function() {
    return function(input, start) {
        start = +start; 
        return input.slice(start);
    }
});