Yii 2 Template
===============================

Yii 2 Template is a skeleton [Yii 2](http://www.yiiframework.com/) application best for
developing complex Web applications with multiple tiers.

This template based on [Yii 2 Advanced Application Template](https://github.com/yiisoft/yii2-app-advanced)

The template includes three tiers: front end, back end, and console, each of which
is a separate Yii application.

The template is designed to work in a team development environment. It supports
deploying the application in different environments.

DIRECTORY STRUCTURE
-------------------

```
apps
    common
        config/              contains shared configurations
        mail/                contains view files for e-mails
        models/              contains model classes used in both backend and frontend
    console
        config/              contains console configurations
        controllers/         contains console controllers (commands)
        migrations/          contains database migrations
        models/              contains console-specific model classes
        runtime/             contains files generated during runtime
    backend
        assets/              contains application assets such as JavaScript and CSS
        config/              contains backend configurations
        controllers/         contains Web controller classes
        models/              contains backend-specific model classes
        runtime/             contains files generated during runtime
        views/               contains view files for the Web application
    frontend
        assets/              contains application assets such as JavaScript and CSS
        config/              contains frontend configurations
        controllers/         contains Web controller classes
        models/              contains frontend-specific model classes
        runtime/             contains files generated during runtime
        views/               contains view files for the Web application
        widgets/             contains frontend widgets
vendor/                  contains dependent 3rd-party packages
public_html/             contains the entry script and Web resources for front end
    admin/               contains the entry script and Web resources for back end
environments/            contains environment-based overrides
tests                    contains various tests for the advanced application
    codeception/         contains tests developed with Codeception PHP Testing Framework
```
