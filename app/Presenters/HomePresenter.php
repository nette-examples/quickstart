<?php

declare(strict_types=1);

namespace App\Presenters;

use App\Model\PostFacade;
use Nette;


/**
 * Presenter for the homepage.
 */
final class HomePresenter extends Nette\Application\UI\Presenter
{
	private PostFacade $facade;


	public function __construct(PostFacade $facade)
	{
		$this->facade = $facade;
	}


	/**
	 * Fetches and sends the latest public articles to the template.
	 */
	public function renderDefault(): void
	{
		$this->template->posts = $this->facade
			->getPublicArticles()
			->limit(5);
	}
}
