<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$Z3RTVEhTNkVvQ01xSmpyMA$Ys/AqjzxyYJxAZs7n5tZVBh6KyOI6txISt6qHlNRll0',
        'loginSecurityLevel' => 'normal',
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
        ],
        'dlf' => [
            'caching' => '0',
            'enableInternalProxy' => '1',
            'fileGrpAudio' => 'AUDIO',
            'fileGrpDownload' => 'DOWNLOAD',
            'fileGrpFulltext' => 'DDB_FULLTEXT,FULLTEXT',
            'fileGrpImages' => 'DEFAULT,MAX',
            'fileGrpThumbs' => 'THUMBS',
            'forceAbsoluteUrl' => '1',
            'forceAbsoluteUrlHttps' => '1',
            'iiifThumbnailHeight' => '150',
            'iiifThumbnailWidth' => '150',
            'indexAnnotations' => '0',
            'metadataFormats' => '0',
            'publishNewCollections' => '1',
            'solrAllowCoreDelete' => '0',
            'solrConnect' => '0',
            'solrFieldAutocomplete' => 'autocomplete',
            'solrFieldCollection' => 'collection',
            'solrFieldDate' => 'date',
            'solrFieldDefault' => 'default',
            'solrFieldFulltext' => 'pagefulltext',
            'solrFieldGeom' => 'geom',
            'solrFieldId' => 'id',
            'solrFieldLicense' => 'license',
            'solrFieldLocation' => 'location',
            'solrFieldPage' => 'pagenumber',
            'solrFieldPartof' => 'partof',
            'solrFieldPid' => 'pid',
            'solrFieldPurl' => 'purl',
            'solrFieldRecordId' => 'record_id',
            'solrFieldRestrictions' => 'restrictions',
            'solrFieldRoot' => 'root',
            'solrFieldSid' => 'sid',
            'solrFieldTerms' => 'terms',
            'solrFieldThumbnail' => 'thumbnail',
            'solrFieldTimestamp' => 'timestamp',
            'solrFieldTitle' => 'title',
            'solrFieldToplevel' => 'toplevel',
            'solrFieldType' => 'type',
            'solrFieldUid' => 'issue_id',
            'solrFieldUrn' => 'urn',
            'solrFieldVolume' => 'volume',
            'solrHost' => 'dev-ddb.fiz-karlsruhe.de',
            'solrHttps' => '1',
            'solrPass' => '',
            'solrPath' => '/api',
            'solrPort' => '443',
            'solrTimeout' => '10',
            'solrUser' => '',
            'unhideOnIndex' => '0',
            'useExternalApisForMetadata' => '0',
            'useragent' => 'Kitodo.Presentation',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
    ],
    'FE' => [
        'cacheHash' => [
            'requireCacheHashPresenceParameters' => [
                'tx_dlf[id]',
            ],
        ],
        'debug' => true,
        'loginSecurityLevel' => 'normal',
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
                        5 => [
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
