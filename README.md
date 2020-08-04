
# Productivity+

Productivity+ is a web application where a user may track their habits on a daily basis & see their gathered data visually. The front-end is built on React & Redux and data is stored within a Ruby on Rails back-end API.

### Installing

Clone front-end and back-end repositories to chosen directory.

```
git clone git@github.com:pharia-le/productivity-back-end.git
git clone git@github.com:pharia-le/productivity-front-end.git
```

Within productivity-back-end, perform the following:

1) Install gems.

```
bundle install
```

2) Create Postgres database.

3) Perform migrations and run seed data.

```
rails db:create
rails db:migrate
rails db:seed
```

Start servers by cding into the directory:

1) productivity-back-end

```
rails s
```

2) productivity-front-end

```
yarn start
```

Navigate to http://localhost:3001/ in browser.

Enjoy! :)

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owners of this repository before making a change.

### Pull Request Process

1.Ensure any install or build dependencies are removed before the end of the layer when doing a build.

2.Update the README.md with details of changes to the interface, this includes new environment variables, exposed ports, useful file locations and container parameters.

3.Increase the version numbers in any examples files and the README.md to the new version that this Pull Request would represent. The versioning scheme we use is SemVer.

4.You may merge the Pull Request in once you have the sign-off of two other developers, or if you do not have permission to do that, you may request the second reviewer to merge it for you.

## License

This project is licensed under the MIT Open Source Public License.

## Front End

Front end is [here](https://github.com/pharia-le/productivity-front-end)