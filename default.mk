
# Common parameters of create and run targets
define DOCKER_CONTAINER_PARAMETERS
--name $(DOCKER_NAME) \
--publish $(DOCKER_PORT_MAP_TCP_80):80 \
--publish $(DOCKER_PORT_MAP_TCP_443):443 \
--publish $(DOCKER_PORT_MAP_TCP_8443):8443 \
--restart $(DOCKER_RESTART_POLICY) \
--env "APACHE_CONTENT_ROOT=$(APACHE_CONTENT_ROOT)" \
--env "APACHE_CUSTOM_LOG_FORMAT=$(APACHE_CUSTOM_LOG_FORMAT)" \
--env "APACHE_CUSTOM_LOG_LOCATION=$(APACHE_CUSTOM_LOG_LOCATION)" \
--env "APACHE_ERROR_LOG_LOCATION=$(APACHE_ERROR_LOG_LOCATION)" \
--env "APACHE_ERROR_LOG_LEVEL=$(APACHE_ERROR_LOG_LEVEL)" \
--env "APACHE_EXTENDED_STATUS_ENABLED=$(APACHE_EXTENDED_STATUS_ENABLED)" \
--env "APACHE_HEADER_X_SERVICE_UID=$(APACHE_HEADER_X_SERVICE_UID)" \
--env "APACHE_LOAD_MODULES=$(APACHE_LOAD_MODULES)" \
--env "APACHE_OPERATING_MODE=$(APACHE_OPERATING_MODE)" \
--env "APACHE_MOD_SSL_ENABLED=$(APACHE_MOD_SSL_ENABLED)" \
--env "APACHE_MPM=$(APACHE_MPM)" \
--env "APACHE_PUBLIC_DIRECTORY=$(APACHE_PUBLIC_DIRECTORY)" \
--env "APACHE_RUN_GROUP=$(APACHE_RUN_GROUP)" \
--env "APACHE_RUN_USER=$(APACHE_RUN_USER)" \
--env "APACHE_SERVER_ALIAS=$(APACHE_SERVER_ALIAS)" \
--env "APACHE_SERVER_NAME=$(APACHE_SERVER_NAME)" \
--env "APACHE_SYSTEM_USER=$(APACHE_SYSTEM_USER)" \
--env "PHP_OPTIONS_DATE_TIMEZONE=$(PHP_OPTIONS_DATE_TIMEZONE)"
endef

define DOCKER_CONTAINER_PARAMETERS_FULL
--name $(DOCKER_NAME) \
--publish $(DOCKER_PORT_MAP_TCP_22):22 \
--publish $(DOCKER_PORT_MAP_TCP_80):80 \
--publish $(DOCKER_PORT_MAP_TCP_443):443 \
--publish $(DOCKER_PORT_MAP_TCP_8443):8443 \
--restart $(DOCKER_RESTART_POLICY) \
--env "APACHE_CONTENT_ROOT=$(APACHE_CONTENT_ROOT)" \
--env "APACHE_CUSTOM_LOG_FORMAT=$(APACHE_CUSTOM_LOG_FORMAT)" \
--env "APACHE_CUSTOM_LOG_LOCATION=$(APACHE_CUSTOM_LOG_LOCATION)" \
--env "APACHE_ERROR_LOG_LOCATION=$(APACHE_ERROR_LOG_LOCATION)" \
--env "APACHE_ERROR_LOG_LEVEL=$(APACHE_ERROR_LOG_LEVEL)" \
--env "APACHE_EXTENDED_STATUS_ENABLED=$(APACHE_EXTENDED_STATUS_ENABLED)" \
--env "APACHE_HEADER_X_SERVICE_UID=$(APACHE_HEADER_X_SERVICE_UID)" \
--env "APACHE_LOAD_MODULES=$(APACHE_LOAD_MODULES)" \
--env "APACHE_OPERATING_MODE=$(APACHE_OPERATING_MODE)" \
--env "APACHE_MOD_SSL_ENABLED=$(APACHE_MOD_SSL_ENABLED)" \
--env "APACHE_MPM=$(APACHE_MPM)" \
--env "APACHE_PUBLIC_DIRECTORY=$(APACHE_PUBLIC_DIRECTORY)" \
--env "APACHE_RUN_GROUP=$(APACHE_RUN_GROUP)" \
--env "APACHE_RUN_USER=$(APACHE_RUN_USER)" \
--env "APACHE_SERVER_ALIAS=$(APACHE_SERVER_ALIAS)" \
--env "APACHE_SERVER_NAME=$(APACHE_SERVER_NAME)" \
--env "APACHE_SYSTEM_USER=$(APACHE_SYSTEM_USER)" \
--env "PHP_OPTIONS_DATE_TIMEZONE=$(PHP_OPTIONS_DATE_TIMEZONE)" \
--env "SSH_AUTHORIZED_KEYS=$(SSH_AUTHORIZED_KEYS)" \
--env "SSH_AUTOSTART_SSHD=$(SSH_AUTOSTART_SSHD)" \
--env "SSH_AUTOSTART_SSHD_BOOTSTRAP=$(SSH_AUTOSTART_SSHD_BOOTSTRAP)" \
--env "SSH_CHROOT_DIRECTORY=$(SSH_CHROOT_DIRECTORY)" \
--env "SSH_INHERIT_ENVIRONMENT=$(SSH_INHERIT_ENVIRONMENT)" \
--env "SSH_SUDO=$(SSH_SUDO)" \
--env "SSH_USER=$(SSH_USER)" \
--env "SSH_USER_FORCE_SFTP=$(SSH_USER_FORCE_SFTP)" \
--env "SSH_USER_HOME=$(SSH_USER_HOME)" \
--env "SSH_USER_PASSWORD=$(SSH_USER_PASSWORD)" \
--env "SSH_USER_PASSWORD_HASHED=$(SSH_USER_PASSWORD_HASHED)" \
--env "SSH_USER_SHELL=$(SSH_USER_SHELL)" \
--env "SSH_USER_ID=$(SSH_USER_ID)"
endef
