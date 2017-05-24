[![Build Status](https://travis-ci.org/conor123/t2.svg?branch=master)](https://travis-ci.org/conor123/t2)

# t2

A reference repo demonstrating how to continuously deploy via [terraform](http://terraform.io)
from [TravisCI](https://travis-ci.org/mdb/terraform-example).

Install the `travis` CLI if you don't already have it:

  ```
  $ gem install travis
  ```

Use the `travis` CLI to encrypt your AWS credentials and your [Github access token]() in environment variables:

  ```
  $ travis encrypt AWS_ACCESS_KEY_ID=123 AWS_SECRET_ACCESS_KEY=456 GH_TOKEN=123
  ```

Add the encrypted credentials string to your `.travis.yml`, replacing the current `secure` value:

  ```
  ...
    env:
      secure: "ENCRYPTED STRING HERE"
  ...
  ```
