<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 6:10 PM
 */
namespace app\controllers;
use yii\web\controller;

class HelloWorldController extends Controller{
    public function actionHelloWorld(){
        return $this->render('hello-world',['hell' => 'Hell']);
    }
}