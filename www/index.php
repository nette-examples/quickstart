<?php

declare(strict_types=1);

if (PHP_VERSION_ID < 70400) {
	exit('Nette Sandbox requires a PHP version 7.4 or newer. You are running ' . PHP_VERSION . '.');
}

// Load the Composer autoloader
require __DIR__ . '/../vendor/autoload.php';

// Initialize the application environment
$configurator = App\Bootstrap::boot();

// Create the Dependency Injection container
$container = $configurator->createContainer();

// Start the application and handle the incoming request
$application = $container->getByType(Nette\Application\Application::class);
$application->run();
