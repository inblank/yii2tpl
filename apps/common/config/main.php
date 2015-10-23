<?php
return [
    'vendorPath' => realpath(__DIR__ . '/../../../vendor'),
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'view' => [
            'defaultExtension'=>'tpl',
            'renderers' => [
                'tpl' => [
                    'class' => 'yii\smarty\ViewRenderer',
                ],
            ],
        ],

    ],
];
