# Bookmark manager 

## User Stories

`As a User` \
`to access webpages` \
`I want to see a list of bookmarks` \

# to set up the database

connect to psql, create a bookmark_manager database and a bookmark_manager_test database
`CREATE DATABASE "bookmark_manager";`
`CREATE DATABASE "bookmark_manager_test";`
set your local environment variable to 'bookmark_manager'
`export BOOKMARK_DATABASE='bookmark_manager'`

# to set up the appropriate tables

connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order, in both databases.
