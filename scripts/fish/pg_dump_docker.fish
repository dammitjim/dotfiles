function pg_dump_docker
    if count $argv > /dev/null
        set -l keys (pg_docker_parse)
        set -l database $keys[1]
        set -l port $keys[2]
        set -l password $keys[3]
        set -l user $keys[4]
        echo "Dumping $database from 127.0.0.1:$port to file $argv"
        PGPASSWORD="$password" pg_dump $database -h 127.0.0.1 -p $port -U $user -Fc --file=$argv
    else
        echo "Provide a filename as the first argument"
    end
end
