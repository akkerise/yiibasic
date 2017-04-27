<?php

namespace app\controllers;

use app\models\UserForm;
use Yii;
use yii\base\Model;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        $model->scenario = ContactForm::SCENARIO_EMAIL_FROM_USER;
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionHello()
    {
        $test = 'AkKe';
        return $this->render('hello', [
            'test' => $test
        ]);
    }

    public function actionUser()
    {
        $model = new UserForm;
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            Yii::$app->session->setFlash('success', 'You have entered the data correctly');
            //left right this later
        }

        return $this->render('userForm', ['model' => $model]);

    }

    public function actionSpeak($message = 'Default message')
    {
        return $this->render('speak', ['message' => $message]);
    }

    public function actionShowContactModel()
    {
        $mContactForm = new \app\models\ContactForm();
        $postData = \Yii::$app->request->post('ContactForm', []);
        $mContactForm->name = isset($postData['name']) ? $postData['name'] : null;
        $mContactForm->email = isset($postData['email']) ? $postData['email'] : null;
        $mContactForm->subject = isset($postData['subject']) ? $postData['subject'] : null;
        $mContactForm->body = isset($postData['body']) ? $postData['body'] : null;
        $mContactForm->name = 'AkKeRise';
//        $mContactForm->name = 'contactForm';
//        $mContactForm->email = 'asdsa@c.c';
//        $mContactForm->subject = 'asd';
//        $mContactForm->body = 'dsa';
//        return \yii\helpers\Json::encode($mContactForm);
        return $mContactForm;
    }

    public function actionTestWidget()
    {
        $model = new Model;
        return $this->render('testwidget',['model' => $model]);
    }
}
