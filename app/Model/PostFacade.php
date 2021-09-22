<?php

declare(strict_types=1);

namespace App\Model;

use Nette;


final class PostFacade
{
	public function __construct(
		private Nette\Database\Explorer $database,
	) {
	}


	public function getPublicArticles()
	{
		return $this->database
			->table('posts')
			->where('created_at < ', new \DateTime)
			->order('created_at DESC');
	}
}
