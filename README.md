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
> require './lib/parse'
> file = Parse.new
> file.parser(insert file path in quotation marks here)
> file.sort_by_page_view
> file.see_views
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
