<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;


/**
 * Presenter for editing posts.
 */
final class EditPresenter extends Nette\Application\UI\Presenter
{
	/**
	 * Dependency injection of the database.
	 */
	public function __construct(
		private Nette\Database\Explorer $database,
	) {
	}


	/**
	 * Ensure the user is logged in before any action.
	 */
	public function startup(): void
	{
		parent::startup();

		if (!$this->getUser()->isLoggedIn()) {
			$this->redirect('Sign:in');
		}
	}


	/**
	 * Render the edit view for a specific post.
	 * Sets default values for the form based on the post data.
	 */
	public function renderEdit(int $postId): void
	{
		$post = $this->database
			->table('posts')
			->get($postId);

		if (!$post) {
			$this->error('Post not found');
		}

		$this->getComponent('postForm')
			->setDefaults($post->toArray());
	}


	/**
	 * Form for editing/creating posts.
	 */
	protected function createComponentPostForm(): Form
	{
		$form = new Form;
		$form->addText('title', 'Title:')
			->setRequired();
		$form->addTextArea('content', 'Content:')
			->setRequired();

		$form->addSubmit('send', 'Save and publish');
		$form->onSuccess[] = $this->postFormSucceeded(...);

		return $form;
	}


	/**
	 * Handles the successful submission of the post form.
	 * Updates an existing post or creates a new one.
	 */
	private function postFormSucceeded(array $data): void
	{
		$postId = $this->getParameter('postId');

		if ($postId) {
			$post = $this->database
				->table('posts')
				->get($postId);
			$post->update($data);

		} else {
			$post = $this->database
				->table('posts')
				->insert($data);
		}

		$this->flashMessage('Post was published', 'success');
		$this->redirect('Post:show', $post->id);
	}
}
