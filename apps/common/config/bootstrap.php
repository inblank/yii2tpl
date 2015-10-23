<?php
$path = dirname(__DIR__);
Yii::setAlias('common', $path);
$path = dirname($path);
Yii::setAlias('frontend', $path . '/frontend');
Yii::setAlias('backend', $path . '/backend');
Yii::setAlias('console', $path . '/console');
