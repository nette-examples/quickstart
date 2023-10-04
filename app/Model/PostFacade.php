<?php

declare(strict_types=1);

namespace App\Model;

use Nette;


/**
 * Facade for handling operations related to posts.
 */
final class PostFacade
{
	use Nette\SmartObject;

	private Nette\Database\Explorer $database;


	public function __construct(Nette\Database\Explorer $database)
	{
		$this->database = $database;
	}


	/**
	 * Fetches all articles that were created before the current date.
	 * Articles are ordered by their creation date in descending order.
	 */
	public function getPublicArticles()
	{
		return $this->database
			->table('posts')
			->where('created_at < ', new \DateTime)
			->order('created_at DESC');
	}
}
