<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 13.10.2017
  Time: 16:54
  To change this template use File | Settings | File221 Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-md12">
    <div class="jumbotron text-center">
        <h1>Добавить заметку</h1>
    </div>
    <form name="noteAddForm">
        <div class="alert alert-danger" role="alert" ng-show="!noteAddForm.$valid">
            <i class="fa fa-exclamation" aria-hidden="true"></i>
            <span class="sr-only">Ошибка</span>
            Заметка не может быть пустой!
        </div>
        <div class="form-group">
            <textarea name="text" class="form-control" placeholder="Текст заметки" ng-model="noteController.note.text" required></textarea>
        </div>
        <div class="form-group">
            <button class="btn btn-success btn-lg btn-block" ng-click="noteAddForm.$valid && noteController.save()">
                <i class="fa fa-floppy-o" aria-hidden="true"></i>
                Сохранить
            </button>
            <a href="#!\" type="submit" class="btn btn-danger btn-lg btn-block">
                <i class="fa fa-ban" aria-hidden="true"></i>
                Отмена
            </a>
        </div>
    </form>
</div>