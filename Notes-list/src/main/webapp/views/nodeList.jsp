<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div ng-controller="PaginationController as paginationController">
    <div class="row">
        <div class="col-md-8">
            <a href="#!addNote" class="btn btn-success mb-3">+ Добавить
                заметку
            </a>
        </div>
        <div class="col-md-4">
            <h3 class="text-success">Сортировка по дате:</h3>
            <div class="radio">
                <label><input type="radio" name="optradio" ng-click="homeController.sort()">по возврастанию</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="optradio" ng-click="homeController.sort()" checked>по убыванию</label>
            </div>
        </div>
    </div>
    <ul class="nav nav-pills mb-3" ng-controller="NavTabController as navTabController">
        <li class="{{navTabController.isSet(1) ? 'active' : ''}}" ng-click="navTabController.setTab(1)">
            <a class="nav-link" href="#" ng-click="homeController.noteTypeFilter = undefined"
               onclick="return false;">Все заметки</a>
        </li>
        <li class="{{navTabController.isSet(2) ? 'active' : ''}}" ng-click="navTabController.setTab(2)">
            <a class="nav-link" href="#" ng-click="homeController.noteTypeFilter = {executed: true}"
               onclick="return false;">Выполненные</a>
        </li>
        <li class="{{navTabController.isSet(3) ? 'active' : ''}}" ng-click="navTabController.setTab(3)">
            <a class="nav-link" href="#" ng-click="homeController.noteTypeFilter = {executed: false}"
               onclick="return false;">Невыполненные</a>
        </li>
    </ul>

    <div class="clear-notes">
        <div class="note"
             ng-repeat="note in homeController.notes | orderBy:homeController.sortKey:homeController.reverse | filter:search | filter:homeController.noteTypeFilter | startFrom:paginationController.currentPage * paginationController.pageSize | limitTo:paginationController.pageSize">
            <div class="note-operations">
                <button class="btn btn-danger btn-sm" ng-click="homeController.execute(note)" ng-show="!note.executed">Just Do it!
                </button>
                <span class="text-success" ng-show="note.executed"><i class="fa fa-check" aria-hidden="true"></i></span>
                <a href="#!/editNote/{{note.id}}" class="btn btn-sm btn-default"><i class="fa fa-pencil"
                                                                                    aria-hidden="true"></i></a>
                <button class="btn btn-sm btn-default" ng-click="homeController.removeItem(note)"><i
                        class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="note-body">
                {{note.text}}
            </div>
            <div class="note-footer">
                Дата создания: {{note.dateEntered | date : "dd.MM.y HH:mm:ss"}}
            </div>
        </div>
    </div>

    <ul class="pagination">
        <li class="{{(page - 1) == paginationController.currentPage ?  'active' : ''}}"
            ng-repeat="page in paginationController.range(1, (homeController.notes|filter:homeController.noteTypeFilter).length)">
            <a href="#"
               ng-click="paginationController.setCurrentPage(page - 1)"
               onclick="return false;">{{page}}</a>
        </li>
    </ul>
</div>
