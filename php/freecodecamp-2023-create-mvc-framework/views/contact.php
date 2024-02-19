<?php $this->title = 'Contáctanos' ?>

<h1>Contáctanos</h1>

<?= $form->begin('/contacto', 'post') ?>
	<?= $form->field($model, 'subject') ?>
	<?= $form->field($model, 'email')->email() ?>
	<?= $form->textarea($model, 'body') ?>

    <button type="submit">
        Enviar
    </button>
<?= $form->end() ?>