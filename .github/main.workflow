workflow "Test and deploy to Heroku" {
 on = "push"
 resolves = ["heroku.deploy"]
}

action “ruby.build” {
 uses = “actions/docker/cli@master”
 args = “build -f Dockerfile -t ci-$GITHUB_SHA:latest .”
}

action “ruby.rspec” {
 uses = “actions/docker/cli@master”
 needs = [“ruby.build”]
 args = “run ci-$GITHUB_SHA:latest rspec”
}

action “git.master” {
  uses = “actions/bin/filter@master”
  needs = [“ruby.rspec”]
  args = “branch master”
}

action “heroku.login” {
  uses = “actions/heroku@master”
  needs = [“git.master”]
  args = “container:login”
  secrets = ["c3e95bb4-5b06-4f1e-a6b5-5dbb88b42978"]
}

action “heroku.push” {
  uses = “actions/heroku@master”
  needs = “heroku.login”
  args = “container:push web”
  
  secrets = [
    “c3e95bb4-5b06-4f1e-a6b5-5dbb88b42978”,
    "stark-coast-64724"
  ]
  
  env = {
    RACK_ENV = “production”
  }
}
action “heroku.envs” {
  uses = “actions/heroku@master”
  needs = “heroku.push”
  
  args = [
    “config:set”,
    “RACK_ENV=$RACK_ENV”,
    “MY_SECRET=$MY_SECRET”
  ]
  secrets = [
    “c3e95bb4-5b06-4f1e-a6b5-5dbb88b42978Y”,
    “stark-coast-64724”,
    “MY_SECRET”
  ]
  
  env = {
    RACK_ENV = “production”
  }
}

action “heroku.deploy” {
  uses = “actions/heroku@master”
  needs = [“heroku.envs”, “heroku.push”]
  
  args = [“container:release”, “web”]
  
  secrets = [
    “c3e95bb4-5b06-4f1e-a6b5-5dbb88b42978Y”,
    “stark-coast-64724”,
    “MY_SECRET”
  ]
  env = {
    RACK_ENV = “production”
  }
}
