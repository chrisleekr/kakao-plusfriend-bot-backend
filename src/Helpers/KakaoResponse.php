<?php

namespace KakaoBotAPI\Helpers;

use Ds\Map;
use Ds\Vector;

/**
 * Class KakaoResponse
 *
 * @package KakaoBotAPI\Helpers
 */
class KakaoResponse
{
    private static $instance = null;

    /**
     * Get instance for class
     *
     * @return KakaoResponse|null
     */
    public static function getInstance()
    {
        if (self::$instance == null) {
            self::$instance = new KakaoResponse();
        }

        return self::$instance;
    }

    /**
     * KakaoResponse constructor.
     */
    private function __construct()
    {
    }

    /**
     * Construct final response for Kakao Bot API
     *
     * @param Map $outputs
     * @return Map
     */
    private function baseResponse(Map $outputs)
    {
        return new Map([
            'version' => '2.0',
            'template' => [
                'outputs' => [$outputs]
            ]
        ]);
    }

    /**
     * Get button item
     *
     * @param string $label
     * @param string $url
     * @return Map
     */
    public function buttonWebLink(string $label, string $url): Map
    {
        return new Map([
            'label' => $label,
            'action' => 'webLink',
            'webLinkUrl' => $url
        ]);
    }

    /**
     * Convert post to card items
     *
     * @param Vector $posts
     * @return Vector
     */
    public function convertPostToCardItems(Vector $posts): Vector
    {
        if ($posts->isEmpty()) {
            return new Vector();
        }
        $cardItems = new Vector();
        /** @var Map $post */
        foreach ($posts as $post) {
            $cardItems->push(new Map([
                'title' => $post->get('subject'),
                'description' => $post->get('content'),
                'imageUrl' => 'http://lorempixel.com/400/400?v='.uniqid(),
                'link' => [
                    'web' => 'https://m.google.com'
                ]
            ]));
        }
        return $cardItems;
    }

    /**
     * Get list cards with items
     *
     * @param string $headerText
     * @param Vector $items
     * @param Vector $buttons
     * @return Map
     */
    public function listCard(string $headerText, Vector $items, Vector $buttons): Map
    {
        $outputs = new Map([
            'listCard' => [
                'header' => [
                    'title' => $headerText
                ],
                'items' => $items,
                'buttons' => $buttons
            ]
        ]);

        return $this->baseResponse($outputs);
    }

    /**
     * Get simple text
     *
     * @param string $text
     * @return Map
     */
    public function simpleText(string $text): Map
    {
        $outputs = new Map([
            'simpleText' => [
                'text' => $text
            ]
        ]);

        return $this->baseResponse($outputs);
    }
}
