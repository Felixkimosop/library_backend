# Library Project
This is a library project that allows administrators to manage books in a library, and users to browse and download books. The project is built using Ruby on Rails framework.

## Table of Contents
* Features
* Installation
* Usage
* API Endpoints
* Technologies Used
* Contributing
* License

## Features
* Admin can add new books to the library
* Admin can remove books from the library
* Users can browse books in the library
* Users can add books to their collection
* Users can download books from their collection

## Installation
To install the project, you need to have Ruby and Rails installed on your machine. Once you have Ruby and Rails installed, follow these steps:

* Clone the repository to your local machine
* Navigate to the project directory
* Run bundle install to install the required dependencies
* Run rails db:migrate to set up the database
* Run rails db:seed to seed the database with sample data

## Usage
To run the project, navigate to the project directory and run rails server. The server will start at http://localhost:3000/. However you can also use the deployed server link: https://library-books.onrender.com

You can register as a user or an admin. Admins are given a special key to register.

As an administrator, you can add new books to the library by navigating to the "Books" section in the dashboard. You can also remove books from the library by clicking on the "Delete" button next to a book.

As a user, you can browse the books in the library and add them to your collection by clicking on the "Add to Collection" button. You can then download the books from your collection by clicking on the "Download" button next to a book.

## API Endpoints
The following API endpoints are available:

## Endpoint
### Collections
GET /collections
GET /collections/:id
DELETE /collections/:id

### Books
GET /books
GET /books/:id
POST /books
DELETE /books/:id

### Users
GET /users
GET /users/:id
POST /users
DELETE /users/:id
POST /users/:id/add_book/:book_id

### Admins
GET /admins
GET /admins/:id
POST /admins

### Sessions
POST /login
DELETE /logout


## Technologies Used
The following technologies were used to build the project:

* Ruby on Rails
* SQLite3
* Postman 

## Contributing
 To contribute to the project :

* Fork the repository
* Clone the repository to your local machine
* Create a new branch for your changes
* Make your changes and commit them
* Push your changes to your fork
* Submit a pull request

## License
This project is released under the MIT License. See the LICENSE file for more details.
