<?php

class SiteController extends Controller
{


	public function actionIndex()
	{
		$model = new Subscribe();
        if(isset($_POST['Subscribe'])){
            $model->attributes=$_POST['Subscribe'];
            if($model->save()){
                Yii::app()->user->setFlash('subscribe',true);
                $this->refresh();
            }
        }

		$this->render('subscribe', array('model'=>$model));
	}

    public function actionAdmin(){
        $dataProvider = Subscribe::model()->search();
        $this->render('admin', array('dataProvider'=>$dataProvider));
    }

	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}
}