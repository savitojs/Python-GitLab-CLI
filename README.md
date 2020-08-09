# Python GitLab CLI Utility

Python based utility to manage GitLab via CLI commands.

## Build

```
docker build --no-cache -t python-gitlab:latest .
```

## Usage

`GITLAB_TOKEN` and `GITLAB_URL` can be replaced as per environment.

```
export TOKEN="cbsjgh2368hjkda876328-dsad3"
export GITLAB_URL="https://gitlab.com"
```

One can use following as a CI step.

```
sed -i "s|GITLAB_TOKEN|"$TOKEN"|" ~/.python-gitlab.cfg
sed -i "s@GITLAB_URL@"$GITLAB_URL"@" ~/.python-gitlab.cfg
```

### More Info

https://python-gitlab.readthedocs.io/en/stable/cli.html

---
