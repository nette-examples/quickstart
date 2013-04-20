<?php

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;


final class SignPresenter extends Nette\Application\UI\Presenter
{
	/**
	 * Sign-in form factory.
	 */
	protected function createComponentSignInForm()
	{
		$form = new Form;
		$form->addText('username', 'Username:')
			->setRequired('Please enter your username.');

		$form->addPassword('password', 'Password:')
			->setRequired('Please enter your password.');

		$form->addSubmit('send', 'Sign in');

		// call method signInFormSucceeded() on success
		$form->onSuccess[] = [$this, 'signInFormSucceeded'];
		return $form;
	}


	public function signInFormSucceeded(Form $form, \stdClass $values)
	{
		try {
			$this->getUser()->login($values->username, $values->password);
			$this->redirect('Homepage:');

		} catch (Nette\Security\AuthenticationException $e) {
			$form->addError('Incorrect username or password.');
		}
	}


	public function actionOut()
	{
		$this->getUser()->logout();
		$this->flashMessage('You have been signed out.');
		$this->redirect('Homepage:');
	}
}
