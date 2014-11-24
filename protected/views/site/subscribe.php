<div>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="text-center"><?=Yii::app()->name?></h1>
            </div>
            <div class="modal-body">
                <?php if(Yii::app()->user->hasFlash('subscribe')): ?>
                    <div class="alert alert-success"><strong>Спасибо!</strong> Вы подписалсь на наши рассылки.</div>
                <?php else: ?>

                <?php $form=$this->beginWidget('booster.widgets.TbActiveForm', array(
                    'id'=>'subscribe-form',
                    'enableClientValidation'=>true,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>true,
                    ),
                )); ?>
                <?php echo $form->errorSummary($model); ?>
                    <div class="form-group">
                        <?php echo $form->textField($model,'email',array('class'=>'form-control input-lg','placeholder'=>$model->getAttributeLabel('email'))); ?>
                    </div>
                    <div class="form-group">
                        <?php echo CHtml::submitButton('Подписаться',array('class'=>'btn btn-primary btn-lg btn-block')); ?>
                    </div>
                <?php $this->endWidget(); ?>

                <?php endif; ?>
            </div>
            <div class="modal-footer">
                <div class="col-md-12">
                    <a href="https://github.com/Gl00mY-ZeiZ/tz1"><i class="fa fa-github"></i> GitHub</a><br>
                    <a href="/admin"><i class="fa fa-cog"></i> Просмотр записей</a>
                </div>
            </div>
        </div>
    </div>
</div>