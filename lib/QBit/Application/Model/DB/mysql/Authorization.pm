package QBit::Application::Model::DB::mysql::Authorization;

use qbit;

use base qw(QBit::Application::Model::DB::mysql QBit::Application::Model::DB::Authorization);

__PACKAGE__->meta(
    tables => {
        authorizatuin => {
            fields => [
                {name => 'key',           type => 'VARCHAR', length => 255, not_null => TRUE,},
                {name => 'password_hash', type => 'VARCHAR', length => 128, not_null => TRUE,},
            ],
            primary_key => [qw(key)],
        },
    },
);

TRUE;
