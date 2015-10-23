{use class="yii\helpers\Html"}
{use class="yii\bootstrap\Nav"}
{use class="yii\bootstrap\NavBar"}
{use class="yii\widgets\Breadcrumbs"}
{use class="frontend\assets\AppAsset"}
{use class="common\widgets\Alert"}

{AppAsset::register($this)|void}

{$this->beginPage()}
<!DOCTYPE html>
<html lang="{$app->language}">
<head>
    <meta charset="{$app->charset}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {Html::csrfMetaTags()}
    <title>{Html::encode($this->title)}</title>
    {$this->head()}
</head>
<body>
{$this->beginBody()}

<div class="wrap">
    {NavBar::begin([
        'brandLabel' => 'My Company',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top'
        ]
    ])|void}
    {$menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        ['label' => 'About', 'url' => ['/site/about']],
        ['label' => 'Contact', 'url' => ['/site/contact']]
    ]}
    {if $app->user->isGuest}
        {$menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']]}
        {$menuItems[] = ['label' => 'Login', 'url' => ['/site/login']]}
    {else}
        {$menuItems[] = [
            'label' => "Logout ({$app->user->identity->username})",
            'url' => ['/site/logout'],
            'linkOptions' => ['data-method' => 'post']
        ]}
    {/if}
    {Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems
    ])}
    {NavBar::end()|void}
    <div class="container">
        {if !empty($this->params['breadcrumbs'])}
            {Breadcrumbs::widget([
                'links' => $this->params['breadcrumbs']
            ])}
        {/if}
        {Alert::widget()}
        {$content}
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company {date('Y')}</p>

        <p class="pull-right">{Yii::powered()}</p>
    </div>
</footer>

{$this->endBody()}
</body>
</html>
{$this->endPage()}
