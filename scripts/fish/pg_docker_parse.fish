function pg_docker_parse
    set -l database (
        yq e '.services[] | select(.image == "postgres*").environment | .POSTGRES_DB // "postgres"' docker-compose.yml
    )
    set -l port (
        yq e '.services[] | select(.image == "postgres*").ports | .[] | select(. == "*5432") | split(":") | .[0]' docker-compose.yml
    )
    set -l password (
        yq e '.services[] | select(.image == "postgres*").environment.POSTGRES_PASSWORD' docker-compose.yml
    )
    set -l user (
        yq e '.services[] | select(.image == "postgres*").environment | .POSTGRES_USER // "postgres"' docker-compose.yml
    )
    # these values are intended to be captured as a list and then
    # expanded back out into appropriate variables
    echo $database\n$port\n$password\n$user
end
