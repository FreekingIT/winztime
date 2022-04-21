<?php

namespace App\Traits;

use stdClass;

trait RespondsWithHttpStatus
{
    protected function respose($data)
    {
        return response([
            'success' => $data['status'],
            'message' => $data['message'],
            'data' => $data['data'] ?? new \stdClass(),
        ],$data['code']);
    }
    
    protected function success($message, $data = [], $status = 200)
    {
        return response([
            'success' => true,
            'data' => $data,
            'message' => $message,
        ], $status);
    }

    protected function failure($message, $status = 400)
    {
        return response([
            'success' => false,
            'message' => $message,
        ], $status);
    }
}