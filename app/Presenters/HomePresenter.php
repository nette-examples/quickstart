<?php

declare(strict_types=1);

namespace App\Presenters;

use App\Model\PostFacade;
use Nette;


final class HomePresenter extends Nette\Application\UI\Presenter
{
	private PostFacade $facade;


	public function __construct(PostFacade $facade)
	{
		$this->facade = $facade;
	}


	public function renderDefault(): void
	{
		$this->template->posts = $this->facade
			->getPublicArticles()
			->limit(5);
	}
}
