<?php $this->title = 'Registrate' ?>

<h1>Registra una cuenta</h1>

<?= $form->begin('/registrate', 'post') ?>
    <div class="grid">
        <div>
            <?= $form->field($model, 'firstname') ?>
        </div>
        <div>
            <?= $form->field($model, 'lastname') ?>
        </div>
    </div>

    <?= $form->field($model, 'email')->email() ?>
    <?= $form->field($model, 'password')->password() ?>
    <?= $form->field($model, 'pass_confirm')->password() ?>

    <button type="submit">
        Enviar
    </button>
<?= $form->end() ?>
