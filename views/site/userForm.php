<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 10:13 AM
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>

<?php
    if (Yii::$app->session->hasFlash('success')){
        echo "<div class='alert alert-success'>" . Yii::$app->session->getFlash('success') . "</div>";
    }else{
        echo "<div class='alert alert-warning'>Not data</div>";
    }
?>

<?php $form = ActiveForm::begin() ?>
<?= $form->field($model,'name'); ?>
<?= $form->field($model,'email'); ?>
<?= Html::submitButton('Submit', ['class' => 'btn btn-success']); ?>