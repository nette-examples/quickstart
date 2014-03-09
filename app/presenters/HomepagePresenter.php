<?php

namespace App\Presenters;

use Nette,
	App\Model;


use Nette\Application\UI\Form;



class HomepagePresenter extends BasePresenter
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
