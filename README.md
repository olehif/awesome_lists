# Awesome Lists

### Requirements
Ruby 2.7.1, PostgreSQL

### Setup
1. Create .env file from template:
`cp .env.example .env`
2. [Create personal access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) and put it into `.env`
3. Put PostgreSQL params into `.env`
4. ```rake db:setup```

### Usage
Go to `/new` and insert category, technology and github path in `owner/repo` format

### Run tests
Just run `rspec`
