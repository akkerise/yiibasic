<?php
/**
 * Created by PhpStorm.
 * User: AkKe
 * Date: 4/24/2017
 * Time: 6:15 PM
 */

namespace app\components;

use yii\base\Action;

class GreetingAction extends Action
{
    public function run()
    {
        return "Greeting";
    }
}