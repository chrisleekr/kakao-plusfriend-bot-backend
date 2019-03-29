<?php
// Application middleware

// e.g: $app->add(new \Slim\Csrf\Guard);

$app->add(function (\Slim\Http\Request $req, \Slim\Http\Response $res, callable $next) {
    $response = $next($req, $res);
    return $response
        ->withHeader('Access-Control-Allow-Origin', '*')
        ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
        ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});
