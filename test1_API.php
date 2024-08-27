<?php

$router->get('/todo', 'todoController@index');
$router->get('/todo/{id}', 'todoController@show');
$router->post('/todo/save', 'todoController@store');
$router->post('/todo/{id}/update', 'todoController@update');
$router->post('/todo/{id}/delete', 'todoController@destroy');