<?php

use Nette\Application\UI\Form;



class HomepagePresenter extends BasePresenter
{

	/** @var Nette\Database\Connection */
	private $database;



	public function __construct(Nette\Database\Connection $database)
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
