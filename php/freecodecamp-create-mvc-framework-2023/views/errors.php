<?php $this->title = 'Error' ?>

<hgroup>
    <h1>Error - <?= $execption->getCode() ?></h1>
    <p><?= $execption->getMessage() ?></p>
</hgroup>
