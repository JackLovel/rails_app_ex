## setup 
```
$ docker compose build
$ docker compose run --rm web bin/rails db:setup
$ docker compose up -d
```

## create master key 
```
$  docker compose run --rm -e EDITOR=vim web bin/rails credentials:edit
```

## compile assert 

```
修改 config/environments/production.rb 里  config.assets.compile = false 为 true
```
