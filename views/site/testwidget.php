<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/26/2017
 * Time: 1:34 PM
 */
use yii\bootstrap\Progress;
use yii\widgets\ActiveForm;
use app\components\FirstWidget;
?>
<?= FirstWidget::begin(); ?>
        First Widget in H1
<?= FirstWidget::end(); ?>
<?//= Progress::widget(['percent' => 60, 'label' => 'Progress 60%']) ?>
<!---->
<?php //$form = ActiveForm::begin(['id' => 'contact-form']) ?>
<?//= $form->field($model, 'name') ?>
<?//= $form->field($model, 'email') ?>
<?//= $form->field($model, 'subject') ?>
<?//= $form->field($model, 'body')->textArea(['rows' => 6]) ?>
<?//= $form->field($model, 'verifyCode')->widget(
//        Capcha::className(),
//        ['template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
//    ]) ?>
<!--<div class="form-group">-->
<!--    --><?//= Html::submitButton('Submit', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
<!--</div>-->
<?php //$form = ActiveForm::end() ?>