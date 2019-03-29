<?php

namespace KakaoBotAPI\Helpers;

use Ds\Map;
use Ds\Vector;

/**
 * Class Board
 *
 * @package KakaoBotAPI\Helpers
 */
class Board
{
    const BOARD_NOTICE = 1;
    const BOARD_SAMPLE = 2;

    private static $instance = null;
    public $container = null;

    /**
     * Get instance for class
     *
     * @param $container
     * @return Board|null
     */
    public static function getInstance($container)
    {
        if (self::$instance == null) {
            self::$instance = new Board($container);
        }

        return self::$instance;
    }

    /**
     * Board constructor.
     *
     * @param $container
     */
    private function __construct($container)
    {
        $this->container = $container;
    }

    /**
     * Get latest post for provided board id
     *
     * @param int $boardId
     * @return Vector
     */
    public function getLatestPostFromBoard(int $boardId): Vector
    {
        /** @var \PDO $pdo */
        $pdo = $this->container->get('db');

        $statement = $pdo->prepare('
            SELECT
                id,
                board_id,
                subject,
                content,
                author,
                created_at,
                updated_at
            FROM post
            WHERE board_id = :board_id
            ORDER BY updated_at DESC
            LIMIT 5
        ');
        $statement->bindValue(':board_id', $boardId);
        $statement->execute();
        $rows = $statement->fetchAll(\PDO::FETCH_ASSOC);
        $statement->closeCursor();

        $results = new Vector();
        foreach ($rows as $row) {
            $results->push(new Map($row));
        }
        return $results;
    }

    /**
     * Search keyword in post
     *
     * @param string $keyword
     * @return Vector
     */
    public function searchPost(string $keyword): Vector
    {
        /** @var \PDO $pdo */
        $pdo = $this->container->get('db');

        $statement = $pdo->prepare("
            SELECT
                id,
                board_id,
                subject,
                content,
                author,
                created_at,
                updated_at
            FROM post
            WHERE 
                (subject LIKE :keyword OR 
                    content LIKE :keyword  OR 
                    author LIKE :keyword )
            ORDER BY updated_at DESC
            LIMIT 5
        ");
        $statement->bindValue(':keyword', '%'.$keyword.'%');
        $statement->execute();
        $rows = $statement->fetchAll(\PDO::FETCH_ASSOC);
        $statement->closeCursor();

        $results = new Vector();
        foreach ($rows as $row) {
            $results->push(new Map($row));
        }
        return $results;
    }
}
