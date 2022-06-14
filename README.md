
# Movie Watch List

Make a list, add movies to it, that sort of thing. Cobbled together in an afternoon, in the process of being tidied up now.
## Built With

- [PostgreSQL](https://www.postgresql.org/)
- [Rails 6](https://guides.rubyonrails.org/)
- [Heroku](https://heroku.com/)
- [Bootstrap](https://getbootstrap.com/)

## Setup

Install gems JS packages and dependencies
```
bundle install
yarn install
```

### ENV Variables
Cloudinary is used for uploading weird pictures for your lists if that's your sort of thing. You'll need an account at [Cloudinary](https://cloudinary.com/) for this part.

Create an .env to store your environment variables
```
touch .env
```
Set these variables for image upload.
```
CLOUDINARY_URL=your_cloudinary_key
```
### Database Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Start a Server
```
rails s
```

That's it. Enjoy!
## Acknowledgements

 - Built in a terrified panic over 2 days at [Le Wagon](https://www.lewagon.com/tokyo) Tokyo coding bootcamp.
## Authors

- [Chris Bound](https://www.github.com/cpbound)
