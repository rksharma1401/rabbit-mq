services:
    rabbitmq3:
        container_name: "rabbitmq"
        image: rabbitmq:3.8-management-alpine
        environment:
            - RABBITMQ_DEFAULT_USER=myuser
            - RABBITMQ_DEFAULT_PASS=mypassword
        ports:
            # AMQP protocol port
            - '5672:5672'
            # HTTP management UI
            - '15672:1000'
