function pg_dump_docker
    if count $argv > /dev/null
        set -l port (
            yq e '.services[] | select(.image == "postgres*").ports | .[] | select(. == "*5432") | split(":") | .[0]' docker-compose.yml
        )
        set -l password (
            yq e '.services[] | select(.image == "postgres*").environment.POSTGRES_PASSWORD' docker-compose.yml
        )
        set -l database (
            yq e '.services[] | select(.image == "postgres*").environment | .POSTGRES_DB // "postgres"' docker-compose.yml
        )
        set -l user (
            yq e '.services[] | select(.image == "postgres*").environment | .POSTGRES_USER // "postgres"' docker-compose.yml
        )
        echo "Dumping $database from 127.0.0.1:$port to file $argv"
        PGPASSWORD="$password" pg_dump $database -h 127.0.0.1 -p $port -U $user -Fc --file=$argv
    else
        echo "Provide a filename as the first argument"
    end
end
