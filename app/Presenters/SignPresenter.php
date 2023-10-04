<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;


/**
 * Presenter for sign-in and sign-up actions.
 */
final class SignPresenter extends Nette\Application\UI\Presenter
{
	/**
	 * Creates the sign-in form component.
	 */
	protected function createComponentSignInForm(): Form
	{
		$form = new Form;
		$form->addText('username', 'Username:')
			->setRequired('Please enter your username.');

		$form->addPassword('password', 'Password:')
			->setRequired('Please enter your password.');

		$form->addSubmit('send', 'Sign in');

		// call method signInFormSucceeded() on success
		$form->onSuccess[] = $this->signInFormSucceeded(...);
		return $form;
	}


	/**
	 * Handles the successful submission of the sign-in form.
	 */
	private function signInFormSucceeded(Form $form, \stdClass $data): void
	{
		try {
			$this->getUser()->login($data->username, $data->password);
			$this->redirect('Home:');

		} catch (Nette\Security\AuthenticationException $e) {
			$form->addError('Incorrect username or password.');
		}
	}


	/**
	 * Handles user sign out and redirects to the homepage.
	 */
	public function actionOut(): void
	{
		$this->getUser()->logout();
		$this->flashMessage('You have been signed out.');
		$this->redirect('Home:');
	}
}
