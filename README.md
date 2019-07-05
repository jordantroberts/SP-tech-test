# Graduate Developer Test for Smart Pension

## Requirements

Write a program that:

1. Receives a log file as an argument (webserver.log is provided) e.g. /<parse>webserver.log

2. Returns the following:

* list of webpages with the most page views ordered from most pages views to least page views
e.g. `/home 90 visits/index 80 visits etc...`

* list of webpages with the most unique page views also ordered
e.g. `/about/28 unique views/index 5 unique views etc...`

## How to run this program

1. Clone this repo
2. Run `bundle install` from the command line
3. Use this program as follows from your terminal:

```
irb
```
Load the file:
`> require './lib/parse'`

Create a new instance of the Parse class:
`> file = Parse.new`

Pass the log file as an argument to the 'parser' method, which will read the file and return an array of each URL and IP address:
`> file.parser(insert file path in quotation marks here)`

Count how many times the page has been visited:
`> file.sort_by_page_view`

View this data as a list:  
`file.see_views`

Do the same for how many times a page has been visited by a unique IP address:
```
> file.sort_by_unique_view
> file.see_unique_views
```

## How to test this program

1. Clone this repo
2. Run `bundle install` from the command line
3. From the command line, run `rspec`

## User Stories
```
As a developer  
So that I can find out information about a specific log file
I would like to use an existing log file in my program.

As a developer
So that I can check out the popularity of our web pages
I would like to see a list of web page views ordered from highest to lowest page views.

As a developer
So that I can see how many different people are viewing our web pages
I would like to see a list of web pages with the most unique page views also ordered.
```

## Author
Jordan Roberts
