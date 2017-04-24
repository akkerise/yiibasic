<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 2:38 PM
 */
namespace app\controllers;
use yii\web\Controller;
use app\models\Users;

class UsersController extends Controller {
    public function actionIndex() {
        $users = Users::find()->all();
        return $this->render('index', ['users' => $users]);
    }

    public function actionTest()
    {
        $test =  "This is a Test";
        return $this->render('test', ['test' => $test]);
    }
}