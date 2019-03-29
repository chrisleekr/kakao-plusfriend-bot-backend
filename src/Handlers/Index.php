<?php

namespace KakaoBotAPI\Handlers;

use Ds\Map;
use Ds\Vector;
use KakaoBotAPI\Handler;
use KakaoBotAPI\Helpers\Board;
use KakaoBotAPI\Helpers\KakaoResponse;
use Slim\Http\Request;
use Slim\Http\Response;

class Index extends Handler
{
    /**
     * Get handler
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     * @return Response
     */
    public function get(Request $request, Response $response, array $args)
    {
        return $this->response(
            $response,
            200,
            [
                'alive' => true
            ]
        );
    }

    /**
     * Post handler
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     * @return Response
     * @throws \Interop\Container\Exception\ContainerException
     */
    public function post(Request $request, Response $response, array $args)
    {
        /** @var \Monolog\Logger $logger */
        $logger = $this->container->get('logger');

        $params = new Map($request->getParsedBody());
        $logger->info(json_encode($params));

        $responseData = $this->handleBlock($params);

        return $this->response(
            $response,
            200,
            $responseData
        );
    }

    /**
     * Process block
     *
     * @param Map $params
     * @return Map
     */
    private function handleBlock(Map $params): Map
    {
        $board = Board::getInstance($this->container);
        $kakaoResponse = KakaoResponse::getInstance();

        $blockName = $params['userRequest']['block']['name'] ?? '';
        $utterance = $params['userRequest']['utterance'] ?? '';

        switch ($blockName) {
            case '공지사항 보기':
                // 공지사항 보기
                $posts = $board->getLatestPostFromBoard(Board::BOARD_NOTICE);
                $cardItems = $kakaoResponse->convertPostToCardItems($posts);
                $buttons = new Vector([
                    $kakaoResponse->buttonWebLink('웹에서 보기', 'https://m.google.com')
                ]);
                $responseData = $kakaoResponse->listCard('최신 공지사항', $cardItems, $buttons);
                break;
            default:
                // 검색하기
                if ($utterance !== '') {
                    $posts = $board->searchPost($utterance);
                    if ($posts->isEmpty()) {
                        $responseData = $kakaoResponse->simpleText('검색 결과가 없습니다. 다른 검색어를 입력해보세요. 예) risus');
                    } else {
                        $cardItems = $kakaoResponse->convertPostToCardItems($posts);
                        $buttons = new Vector([
                            $kakaoResponse->buttonWebLink('웹에서 보기', 'https://m.google.com?q='.$utterance)
                        ]);
                        $responseData = $kakaoResponse->listCard($utterance, $cardItems, $buttons);
                    }
                } else {
                    $responseData = $kakaoResponse->simpleText('검색하실 키워드를 입력하세요.');
                }
        }
        return $responseData;
    }
}
