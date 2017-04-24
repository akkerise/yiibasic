<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 5:53 PM
 */
namespace app\controllers;
use yii\web\controller;

class PostArticleController extends Controller{
    public function actionPostArticle(){
        return $this->render('post-article',['message' => 'CLGT']);
    }

    public function actionHelloWorld(){
        return 'Hello World';
    }
}