# PortfolioCMS 
Portfolio CMS is a simple web application that allows you to display and manage your portfolio of products and services, as well as other custom content sections.

## <a name="features"></a>Features

* Display sections and posts
* Create new data
* Update data
* Delete data
* Automatic form validation
* Administration (via [RailsAdmin](https://github.com/sferik/rails_admin))
* Authentication (via [Devise](https://github.com/plataformatec/devise))
* Supported ORMs
  * ActiveRecord
  * Mongoid

## <a name="demo"></a>Live Demo

You can see an implementation of PortfolioCMS with real data here [demo]. ([Source code.][source])

[demo]: http://www.ftconsulting.com.ar
[source]: https://github.com/ingfernandotobar/portfoliocms


## <a name="installation"></a>Installation
Run:

    $ bundle install

And then run:

    $ rake db:create db:migrate db:seed
	

## <a name="usage"></a>Usage
Start the server:

    $ rails server

You should see some sample sections and posts at
[http://localhost:3000](http://localhost:3000).

and be able to administer your site with usr: admin@example.com , pass: password at
[http://localhost:3000/admin](http://localhost:3000/admin).

## <a name="versions"></a>Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby implementations:

* Ruby 1.9.2
* Ruby 1.9.3


## <a name="screenshots"></a>Screenshots
![Normal posts view](http://images.fernandotobar.com.ar/01_portfolio_cms_home.png "normal posts view")
![Items posts view](http://images.fernandotobar.com.ar/02_portfolio_cms_items.png "items post view")
![Multiple items posts view](http://images.fernandotobar.com.ar/03_portfolio_cms_multiple_items.png "multiple items post view")
![Admin sections list view](http://images.fernandotobar.com.ar/04_portfolio_cms_rails_admin_administration_sections.png "admin sections list view, powered by RailsAdmin")
![Admin post edit view](http://images.fernandotobar.com.ar/05_portfolio_cms_rails_admin_administration_post_edit.png "admin post edit view, powered by RailsAdmin")
