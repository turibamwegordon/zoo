# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tigers = Tiger.create [
	{appetite: 120},
	{appetite: 250},
	{appetite: 320},
	{appetite: 130},
	{appetite: 188},
	{appetite: 205},
	{appetite: 222},
	{appetite: 144},
]

zebras = Zebra.create [
	{weight: 230},
	{weight: 350},
	{weight: 444},
	{weight: 122},
	{weight: 432},
	{weight: 98},
	{weight: 305},
	{weight: 168},
]

turtles = Turtle.create [
	{status: true},
	{status: false},
	{status: true},
	{status: false},
	{status: false},
	{status: true},
	{status: true},
	{status: false},
]

giraffes = Giraffe.create [
	{height: 320},
	{height: 430},
	{height: 550},
	{height: 220},
	{height: 444},
	{height: 180},
	{height: 345},
	{height: 423},
]