<?php

namespace Tests\Unit\Context\App\Domain\Entity;

use CommonPlatform\Context\App\Domain\Entity\Movie;
use PHPUnit\Framework\TestCase;

class MovieTest extends TestCase
{
    public function testPrueba()
    {
        $title = 'dummy title';
        $slug = 'dummy-title';
        $originalTitle = 'original title';
        $providerId = 'dummy-id';
        $overview = 'dummy overview';

        $sut = Movie::create(
            $title,
            $slug,
            $originalTitle,
            $providerId,
            $overview,
            null,
            null
        );

        $timesViewedIni = $sut->getTimesViewed();
        $sut->increaseViews();
        $sut->increaseViews();
        $sut->increaseViews();

        $this->assertSame($title, $sut->getTitle());
        $this->assertSame($slug, $sut->getSlug());
        $this->assertSame($originalTitle, $sut->getOriginalTitle());
        $this->assertSame($providerId, $sut->getProviderId());
        $this->assertSame($overview, $sut->getOverview());
        $this->assertSame(0, $timesViewedIni);
        $this->assertSame(3, $sut->getTimesViewed());
    }
}
