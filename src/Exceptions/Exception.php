<?php

namespace KakaoBotAPI\Exceptions;

/**
 * Class Exception
 *
 * @package KakaoBotAPI\Exceptions
 */
class Exception extends \Exception
{
    protected $httpResponseCode = 500;

    /**
     * Exception constructor.
     *
     * @param string $message
     * @param int $code
     * @param int $httpResponseCode
     */
    public function __construct(string $message, int $code = 1, $httpResponseCode = 500)
    {
        parent::__construct($message, $code);
        $this->httpResponseCode = $httpResponseCode;
    }

    /**
     * Get http response code
     *
     * @return int
     */
    public function getHttpResponseCode(): int
    {
        return $this->httpResponseCode;
    }
}
