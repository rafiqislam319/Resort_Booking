<?php
namespace App\Helpers;


class Locale
{
    public function team($id, $lang)
    {
        $team_property = [
            'designation' => [
                'en' => 'Designation',
                'bn' => 'পদবী',
            ],
            'degrees' => [
                'en' => 'Degrees',
                'bn' => 'ডিগ্রী',
            ],
            'chamber_location' => [
                'en' => 'Chamber Location:',
                'bn' => 'চেম্বার',
            ],
            'about_me' => [
                'en' => 'About Me:',
                'bn' => 'পরিচিতি',
            ],
        ];

        $data = $team_property[$id];
        return $data[$lang];
    }

    public function blog($id, $lang)
    {
        $blog_property = [
            'read_more' => [
                'en' => 'Read More',
                'bn' => 'আরও পড়ুন',
            ]
        ];

        $data = $blog_property[$id];
        return $data[$lang];
    }
    public function footer($id, $lang)
    {
        $footer_property = [
            'footer_content' => [
                'en' => 'Chamber',
                'bn' => 'চেম্বার',
            ]
        ];

        $data = $footer_property[$id];
        return $data[$lang];
    }
    public function homepage($id, $lang)
    {
        $homepage_property = [
            'home_content_button' => [
                'en' => 'Request a free consultation',
                'bn' => 'পরামর্শ নিন বিনামূল্যে',
            ],
            'charge_dropped' => [
                'en' => 'Charge Dropped',
                'bn' => 'বাদ দেওয়া মামলা',
            ],
            'happy_client' => [
                'en' => 'Happy Client',
                'bn' => 'সন্তুষ্ট মক্কেল',
            ],
            'trusting_client' => [
                'en' => 'Trusting Client',
                'bn' => 'বিশ্বস্ত মক্কেল',
            ],
            'award_won' => [
                'en' => 'Award Won',
                'bn' => 'প্রাপ্ত পুরস্কার',
            ],
        ];

        $data = $homepage_property[$id];
        return $data[$lang];
    }
    public function faq($id, $lang)
    {
        $faq_property = [
            'faq_content' => [
                'en' => 'Frequently Asked Questions',
                'bn' => 'সচরাচর জিজ্ঞাসাসমূহ',
            ]
        ];

        $data = $faq_property[$id];
        return $data[$lang];
    }

}

