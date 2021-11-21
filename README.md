andrewrothstein.luarocks
===========================
![Build Status](https://github.com/andrewrothstein/ansible-luarocks/actions/workflows/build.yml/badge.svg)

Builds and installs [LuaRocks](https://luarocks.org/) atop [LuaJIT](http://luajit.org/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.luarocks
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
