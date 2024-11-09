<?php $this->title = 'Inicio de sesión' ?>

<article>
    <h1>Inicio de sesión</h1>
    
    <?= $form->begin('/login', 'post') ?>
        <?= $form->field($model, 'email')->email() ?>
        <?= $form->field($model, 'password')->password() ?>
    
        <button type="submit" class="contrast">
            Enviar
        </button>
    <?= $form->end() ?>
</article>