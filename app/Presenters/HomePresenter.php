<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;


final class HomePresenter extends Nette\Application\UI\Presenter
{
	private Nette\Database\Explorer $database;


	public function __construct(Nette\Database\Explorer $database)
	{
		$this->database = $database;
	}


	public function renderDefault(): void
	{
		$this->template->posts = $this->database
			->table('posts')
			->order('created_at DESC')
			->limit(5);
	}
}
