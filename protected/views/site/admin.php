<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <?php $this->widget('booster.widgets.TbGridView', array(
                    'dataProvider'=>$dataProvider,
                )
            );
            ?>
        </div>
    </div>
</div>

