gocode set package-lookup-mode go
GOPATH="$(echo $GOPATH):$(pwd)/deps" atom .
