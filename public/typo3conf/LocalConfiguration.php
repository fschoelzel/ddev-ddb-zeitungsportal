<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$Z3RTVEhTNkVvQ01xSmpyMA$Ys/AqjzxyYJxAZs7n5tZVBh6KyOI6txISt6qHlNRll0',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'driver' => 'mysqli',
            ],
        ],
    ],
    'EXT' => [],
    'EXTCONF' => [
        'helhum-typo3-console' => [
            'initialUpgradeDone' => '11.5',
        ],
        'lang' => [
            'availableLanguages' => [
                'de',
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => '',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => '',
            'loginHighlightColor' => '',
            'loginLogo' => '',
            'loginLogoAlt' => '',
        ],
        'dlf' => [
            'annotationServerUrl' => '',
            'embedded3dviewer' => [
                'defaultViewer' => '',
                'viewerModelFormatMapping' => '',
            ],
            'files' => [
                'fileGrpAudio' => 'AUDIO',
                'fileGrpDownload' => 'DOWNLOAD',
                'fileGrpFulltext' => 'DDB_FULLTEXT,FULLTEXT',
                'fileGrpImages' => 'DEFAULT,MAX',
                'fileGrpScore' => 'SCORE',
                'fileGrpThumbs' => 'THUMBS',
            ],
            'general' => [
                'caching' => '0',
                'enableInternalProxy' => '1',
                'forceAbsoluteUrl' => '1',
                'forceAbsoluteUrlHttps' => '1',
                'publishNewCollections' => '1',
                'requiredMetadataFields' => 'document_format,record_id',
                'unhideOnIndex' => '0',
                'useExternalApisForMetadata' => '0',
                'userAgent' => 'DDB-Zeitungsportal',
            ],
            'iiif' => [
                'indexAnnotations' => '0',
                'thumbnailHeight' => '150',
                'thumbnailWidth' => '150',
            ],
            'indexAnnotations' => '0',
            'solr' => [
                'allowCoreDelete' => '0',
                'connect' => '0',
                'fields' => [
                    'autocomplete' => 'autocomplete',
                    'collection' => 'collection',
                    'date' => 'date',
                    'default' => 'default',
                    'fulltext' => 'fulltext',
                    'geom' => 'geom',
                    'id' => 'id',
                    'license' => 'license',
                    'location' => 'location',
                    'page' => 'page',
                    'partof' => 'partof',
                    'pid' => 'pid',
                    'purl' => 'purl',
                    'recordId' => 'record_id',
                    'restrictions' => 'restrictions',
                    'root' => 'root',
                    'sid' => 'sid',
                    'terms' => 'terms',
                    'thumbnail' => 'thumbnail',
                    'timestamp' => 'timestamp',
                    'title' => 'title',
                    'toplevel' => 'toplevel',
                    'type' => 'type',
                    'uid' => 'uid',
                    'urn' => 'urn',
                    'volume' => 'volume',
                ],
                'host' => 'ddev-ddb-zeitungsportal.ddev.site',
                'https' => '0',
                'pass' => '',
                'path' => '/',
                'port' => '8983',
                'timeout' => '10',
                'user' => '',
            ],
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
            'showSampleTasks' => '1',
        ],
    ],
    'FE' => [
        'cacheHash' => [
            'requireCacheHashPresenceParameters' => [
                'tx_dlf[id]',
            ],
        ],
        'debug' => true,
        'pageNotFoundOnCHashError' => false,
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'GFX' => [
        'processor' => 'ImageMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'sRGB',
        'processor_effects' => true,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
        'processor_path_lzw' => '/usr/bin/',
    ],
    'LOG' => [
        'TYPO3' => [
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        'notice' => [
                            'TYPO3\CMS\Core\Log\Writer\FileWriter' => [
                                'disabled' => true,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/local/bin/mailhog sendmail test@example.org --smtp-addr 127.0.0.1:1025',
        'transport_smtp_encrypt' => '',
        'transport_smtp_password' => '',
        'transport_smtp_server' => '',
        'transport_smtp_username' => '',
    ],
    'SYS' => [
        'caching' => [
            'cacheConfigurations' => [
                'hash' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                ],
                'imagesizes' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'pages' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'pagesection' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'rootline' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => '9671ac88ad73f4c44921fa835a35169923e6fc80721a4445ac63c8bd58ce1d7d09276507688996a2f9c63a96ffba24f6',
        'exceptionalErrors' => 12290,
        'features' => [
            'newTranslationServer' => true,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'New TYPO3 Console site',
        'systemMaintainers' => [
            1,
            3,
        ],
    ],
];
