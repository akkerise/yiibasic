<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 10:02 AM
 */

namespace app\models;

use yii\base\Model;

class UserForm extends Model
{
    public $name;
    public $email;

    public function rules()
    {
        return [
            [['name', 'email'], 'required'],
            ['email', 'email']
        ];
    }
}