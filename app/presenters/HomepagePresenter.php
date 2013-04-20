<?php

namespace App\Presenters;

use Nette;


final class HomepagePresenter extends Nette\Application\UI\Presenter
{
	/** @var Nette\Database\Context */
	private $database;


	public function __construct(Nette\Database\Context $database)
	{
		$this->database = $database;
	}


	public function renderDefault($page = 1)
	{
		$this->template->page = $page;
		$this->template->posts = $this->database->table('posts')
			->order('created_at DESC')
			->page($page, 5);
	}
}
