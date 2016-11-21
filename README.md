# 起動

```
$ redis-server
```

フォアグラウンドで起動し、ポート6379番が使用される。バックグラウンドで起動するには、`redis-3.2.4/redis.conf` を修正する。

```
# daemonize no
daemonize yes
```

起動の際に、`redis.conf` を参照する。

```
$ redis-server ./redis.conf
```

# CLI での実行

CLI (対話モード) で実行するには

```
$ redis-cli
```

以下のような表示になる。

```
127.0.0.1:6379>
```

## コマンド

```
> set "PPAP" "Pen Pineapple Apple Pen"
```

この場合、`PPAP` が key、`Pen Pineapple Apple Pen` が value となる。

```
> get PPAP
```

この場合、`PPAP` に対応する value、すなわち`Pen Pineapple Apple Pen` が出力される。

Redis を停止する際は対話モードで

```
> shutdown
```

またはシェルで

```
$ redis-cli shutdown
```

とする。

その他、`> key *` とすればすべての key を取得できる。`> flushall` ですべてのデータを削除。

# phpredis

インストールは <http://qiita.com/shinkuFencer/items/72f2617fb1db2134e340>

## 基本

`redistest.php` として以下を作成。

```
<?php

$redis = new Redis();
$redis->connect("127.0.0.1", 6379);

// set
$redis->set("foo", "bar");

// get
$value = $redis->get("foo");
echo $value;

// delete
$redis->delete("foo");

?>
```

シェルで実行するには

```
$ php redistest.php
```
