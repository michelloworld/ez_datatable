# if Category.count == 0
	ruby = Category.create(name: "Ruby")
	ruby.books.create([
		{
			title: 'Ruby on Rails Tutorial: Learn Web Development with Rails',
			description: 'The Ruby on Rails 3 Tutorial: Learn Rails by Example by Michael Hartl has become a must read for developers learning how to build Rails apps.-Peter Cooper, editor of Ruby Inside Learn Rails 3 Development',
			price: 10.99,
			status: 'active',
		},
		{
			title: 'Programming Ruby',
			description: 'Programming Ruby is a book about the Ruby programming language by Dave Thomas and Andrew Hunt, authors of The Pragmatic Programmer. In the Ruby community, it is commonly known as "The PickAxe" because of the pickaxe on the cover. The book has helped Ruby to spread outside Japan',
			price: 20,
			status: 'active',
		},
		{
			title: 'Practical Object-Oriented Design in Ruby: An Agile Primer',
			description: 'The Complete Guide to Writing Maintainable, Manageable, Pleasing, and Powerful Object-Oriented Applications Object-oriented programming languages exist to help you create beautiful, straightforward applications that are easy to change and simple to extend',
			price: 5.50,
			status: 'active',
		},
		{
			title: 'Learning Ruby',
			description: 'You don\'t have to know everything about a car to drive one, and you don\'t need to know everything about Ruby to start programming with',
			price: 3.75,
			status: 'active',
		},
		{
			title: 'Beginning Ruby',
			description: 'Beginning Ruby is a thoroughly contemporary guide for every type of reader wanting to learn Ruby, from novice programmers to web developers to Ruby newcomers. It starts by explaining the principles behind object-oriented programming and within a few chapters builds toward creating a genuine Ruby application',
			price: 3.75,
			status: 'inactive',
		},
	])

	java = Category.create(name: "Java")
	java.books.create([
		{
			title: 'Effective Java',
			description: 'This highly anticipated new edition of the classic, Jolt Award-winning work has been thoroughly updated to cover Java SE 5 and Java SE 6 features introduced since the first edition',
			price: 12.99,
			status: 'active',
		},
		{
			title: 'Head First Java',
			description: 'Learning a complex new language is no easy task especially when its an object-oriented computer programming language like Java. This resource combines puzzles, strong visuals, mysteries, and soul-searching interviews to offer a complete introduction to object-oriented programming ',
			price: 17,
			status: 'active',
		},
		{
			title: 'Java: A Beginner\'s Guide',
			description: 'A practical introduction to Java programming—fully revised for long-term support release Java SE 11 Thoroughly updated for Java Platform Standard Edition 11, this hands-on resource shows, step by step, how to get started programming in Java from the very first chapteer',
			price: 1.99,
			status: 'active',
		},
		{
			title: 'Java Concurrency in Practice',
			description: 'Threads are a fundamental part of the Java platform. As multicore processors become the norm, using concurrency effectively becomes essential for building high-performance applications',
			price: 0,
			status: 'active',
		},
	])

	php = Category.create(name: "PHP")
	php.books.create([
		{
			title: 'Learning PHP, MySQL & JavaScript: With JQuery, CSS & HTML5',
			description: 'A guide to PHP essentials and the basics of object-oriented programming. Learn how to master MySQL, from database structure to complex queries; create web pages with PHP and MySQL by integrating forms',
			price: 4.55,
			status: 'active',
		},
		{
			title: 'PHP and MySQL Web Development',
			description: 'PHP and MySQL Web Development teaches the reader to develop dynamic, secure, commercial Web sites. Using the same accessible, popular teaching style of the first edition, this best-selling book has been',
			price: 3.66,
			status: 'inactive',
		},
		{
			title: 'PHP Cookbook',
			description: 'Want to understand a certain PHP programming technique? Or learn how to accomplish a particular task? This cookbook is the first place to look',
			price: 7,
			status: 'active',
		},
		{
			title: 'Programming PHP',
			description: 'When it comes to creating websites, the PHP scripting language is red-hot—more popular than Microsoft’s ASP.NET technology. This updated edition covers everything you need to know for creating effective web applications with PHP',
			price: 15,
			status: 'active',
		},
	])

	python = Category.create(name: "Python")
	python.books.create([
		{
			title: 'Learning Python',
			description: 'Get a comprehensive, in-depth introduction to the core Python language with this hands-on book. Based on author Mark Lutz\'s popular training course, this updated fifth edition will help you quickly write efficient, high-quality code with',
			price: 7.15,
			status: 'inactive',
		},
		{
			title: 'Python Cookbook',
			description: 'The Python Cookbook is a collection of problems, solutions, and practical examples for Python programmers, written by Python programmers. Over the past year, members of the Python community have contributed material to an online repository of Python recipes hosted by ActiveState',
			price: 8.99,
			status: 'active',
		},
		{
			title: 'Think Python: An Introduction to Software Design',
			description: 'If you want to learn how to program, working with Python is an excellent way to start. This hands-on guide takes you through the language a step at a time, beginning with basic programming concepts before moving on to functions',
			price: 9.99,
			status: 'active',
		},
		{
			title: 'Dive into Python',
			description: 'Mark Pilgrim\'s Dive Into Python 3 is a hands-on guide to Python 3 (the latest version of the Python language) and its differences from Python',
			price: 9.99,
			status: 'active',
		},
	])
# end