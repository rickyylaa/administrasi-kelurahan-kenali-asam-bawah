<?php

namespace App\Service;

use Twilio\Rest\Client;

class TwilioWhatsAppService
{
    protected $sid;
    protected $token;
    protected $from;

    public function __construct()
    {
        // Mengambil SID, Token dan Nomor Twilio dari file .env
        $this->sid = env('TWILIO_SID');
        $this->token = env('TWILIO_AUTH_TOKEN');
        $this->from = env('TWILIO_WHATSAPP_NUMBER');  // Nomor WhatsApp Twilio
    }

    public function sendMessage($to, $message)
    {
        // Membuat instance dari Twilio Client
        $client = new Client($this->sid, $this->token);

        // Format nomor tujuan dengan prefix WhatsApp
        $to = 'whatsapp:' . $to;
        $from = 'whatsapp:' . $this->from;

        try {
            // Kirim pesan WhatsApp menggunakan Twilio
            $client->messages->create(
                $to, // Nomor tujuan
                [
                    'from' => $from, // Nomor pengirim Twilio
                    'body' => $message, // Isi pesan
                ]
            );

            return "Pesan berhasil dikirim!";
        } catch (\Exception $e) {
            return "Gagal mengirim pesan: " . $e->getMessage();
        }
    }
}
