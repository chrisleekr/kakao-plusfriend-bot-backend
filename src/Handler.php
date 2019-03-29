<?php

namespace KakaoBotAPI;

use Slim\Container;
use Slim\Http\Response;

abstract class Handler
{
    protected $container;

    /**
     * Constructor
     *
     * @param \Slim\Container $container
     */
    public function __construct(Container $container)
    {
        $this->container = $container;
    }

    /**
     * Construct response and return new response
     *
     * @param Response $response
     * @param int $statusCode
     * @param $responseContent
     * @return Response
     */
    protected function response(
        Response $response,
        int $statusCode,
        $responseContent
    )
    {
        $response = $response->withStatus($statusCode);

        $response = $response->withHeader('Content-type', 'application/json');
        $response = $response->withHeader('Pragma', 'no-cache');
        $response = $response->withHeader('Expires', 0);

        $body = json_encode($responseContent);

        $response->getBody()->write($body);

        return $response;
    }
}
