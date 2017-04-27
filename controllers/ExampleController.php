<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 5:47 PM
 */

namespace app\controllers;

use yii\web\Controller;

class ExampleController extends Controller
{
    public $defaultAction = 'google';

    public function actions()
    {
        return [
            'greeting' => 'app\components\GreetingAction'
        ];
    }

    public function actionExample($message = 'Default message')
    {
        return $this->render('example', ['message' => $message]);
    }

    public function actionGoogle()
    {
        return $this->redirect('http://www.google.com');
    }

    public function actionTestParams($first, $second)
    {
        return "$first $second";
    }
}