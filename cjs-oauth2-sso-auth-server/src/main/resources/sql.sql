CREATE TABLE oauth_client_details (
    client_id VARCHAR(128) PRIMARY KEY  COMMENT '客户端id',
    resource_ids VARCHAR(256) COMMENT '资源id',
    client_secret VARCHAR(256) COMMENT '客户端公/私密钥',
    scope VARCHAR(256) COMMENT '授权范围',
    authorized_grant_types VARCHAR(256)  COMMENT '授权类型',
    web_server_redirect_uri VARCHAR(256) COMMENT '重定向URI',
    authorities VARCHAR(256)  COMMENT '授权者',
    access_token_validity INTEGER,
    refresh_token_validity INTEGER,
    additional_information VARCHAR(256),
    autoapprove VARCHAR(256) COMMENT '自动授权批准人'
);
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, web_server_redirect_uri, autoapprove)
VALUES ('MemberSystem', '$2a$10$dYRcFip80f0jIKGzRGulFelK12036xWQKgajanfxT65QB4htsEXNK', 'user_info', 'authorization_code', 'http://localhost:8081/login', 'user_info');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, web_server_redirect_uri, autoapprove)
VALUES ('CouponSystem', '$2a$10$dYRcFip80f0jIKGzRGulFelK12036xWQKgajanfxT65QB4htsEXNK', 'user_info', 'authorization_code', 'http://localhost:8082/login', 'user_info');