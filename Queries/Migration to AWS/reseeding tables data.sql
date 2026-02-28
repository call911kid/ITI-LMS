INSERT INTO [Branch] ([BranchName], [BranchAddress])
VALUES 
-- The Main Headquarters & Standalone Hubs
('Smart Village', 'Building B148, KM 28 Cairo-Alexandria Desert Road, 6th of October, Giza'),
('New Capital', 'Building 4, Knowledge City, New Administrative Capital, Cairo'),
('Alexandria', '1 Mahmoud Salama St, El Shohadaa Sq, inside Post Office Building, Misr Station, Alexandria'),

-- University / Creativa Innovation Hub Branches
('Cairo University', 'Creativa Innovation Hub, Inside Cairo University Campus, Giza'),
('Mansoura', 'Floor 4, Faculty Of Computers & Information, Mansoura University, 60 El Gomhoureya St, El Dakahlia'),
('Assiut', 'Floor 4, Information Network Building, Nayla Khatoun, Assiut University, Assiut'),
('Ismailia', 'KM 4.5 Ring Road, Inside Suez Canal University, Ismailia'),
('Menoufia', 'Creativa Innovation Hub, Inside Menoufia University, Shebin El Kom'),
('Minya', 'Creativa Innovation Hub, Inside Minya University, Minya'),
('Sohag', 'Creativa Innovation Hub, Inside Sohag University, Sohag'),
('Qena', 'Creativa Innovation Hub, Inside South Valley University, Qena'),
('Aswan', 'Creativa Innovation Hub, Inside Aswan University, Sahari City, Aswan'),
('Benha', 'Creativa Innovation Hub, Inside Benha University, Al Qalyubia'),
('Fayoum', 'Creativa Innovation Hub, Inside Fayoum University, Fayoum'),
('Zagazig', 'Creativa Innovation Hub, Inside Zagazig University, Al Sharqia'),
('Damanhour', 'Creativa Innovation Hub, Inside Damanhour University, El Beheira'),
('Tanta', 'Creativa Innovation Hub, Inside Tanta University, El Gharbia'),
('Port Said', 'Creativa Innovation Hub, Inside Port Said University, Port Said'),
('Damietta', 'Creativa Innovation Hub, Inside Damietta University, New Damietta'),

-- Other Regional Branches
('Al Arish', 'North Sinai Governorate, Al Arish City'),
('New Valley', 'Creativa Innovation Hub, New Valley Governorate');





INSERT INTO [dbo].[Department] ([DepartmentName])
VALUES 
('Software Engineering & Web Development'),     
('Data Science & Artificial Intelligence'),     
('Cybersecurity & Cloud Infrastructure'),       
('Digital Arts, Gaming & Content Development'),  
('Business')








INSERT INTO [dbo].[Track] ([TrackName], [DepartmentId])
VALUES 

('Full Stack Web Development Using .NET', 1),
('Full Stack Web Development Using MEARN', 1),
('Full Stack Web Development Using PHP', 1),
('Mobile Application Development iOS', 1),
('Mobile Application Development Android', 1),
('Mobile Application Development Flutter', 1),
('Software Testing', 1),


('Data Science and Artificial Intelligence', 2),
('Machine Learning and Deep Learning', 2),
('Data Analytics and Big Data', 2),


('Cybersecurity', 3),
('Cloud Computing', 3),
('Systems Administration', 3),


('Game Programming', 4),
('UI & UX Design', 4),
('2D Animation & VFX', 4),


('Digital Marketing', 5),
('Salesforce / CRM Specialist', 5),
('Business Intelligence (BI)', 5);



INSERT INTO [dbo].[Course] ([CourseName], [CourseDescription], [MaxDegree], [MinDegree])
VALUES 
('C#', 'C# language syntax and fundamentals', 100, 60),
('OOP', 'Object-Oriented Programming concepts and implementation', 100, 60),
('HTML', 'Basic HyperText Markup Language structure', 50, 30),
('HTML5', 'Semantic tags, multimedia, and advanced HTML5 features', 50, 30),
('CSS', 'Cascading Style Sheets basics and formatting', 50, 30),
('CSS3', 'Advanced styling, Flexbox, Grid, and animations', 50, 30),
('JavaScript', 'Core client-side scripting and DOM manipulation', 100, 60),
('ES6', 'Modern ECMAScript 2015+ features, promises, and modules', 100, 60),
('SQL', 'Database design, normalization, and T-SQL querying', 100, 60),
('MVC', 'Building web applications using ASP.NET Core MVC', 100, 60),

('TypeScript', 'Strongly typed programming language that builds on JavaScript', 50, 30),
('Angular', 'Building single-page client applications using Angular and TypeScript', 100, 60),
('ReactJS', 'Building user interfaces and component-based UI using React', 100, 60),
('Node.js & Express', 'Backend runtime environment and web framework for JavaScript', 100, 60),
('MongoDB', 'NoSQL database design and querying for MERN/MEAN stacks', 50, 30),

('Communication Skills', 'Effective workplace communication, email etiquette, and interpersonal skills', 50, 30),
('Presentation Skills', 'Designing and delivering impactful professional presentations', 50, 30),
('Network Fundamentals', 'Introduction to networking concepts, OSI model, routing, and TCP/IP', 100, 60),
('Operating Systems', 'Core OS concepts, Linux basics, memory management, and process scheduling', 100, 60),
('Software Testing Fundamentals', 'Manual testing, test cases, bug lifecycles, and QA principles', 100, 60),
('Agile & Scrum', 'Agile methodologies and Scrum framework for project management', 50, 30),

('Python Programming', 'Python syntax, data structures, and scripting for data analysis', 100, 60),
('Machine Learning Basics', 'Supervised and unsupervised learning algorithms and models', 100, 60),
('Data Visualization', 'Creating interactive dashboards using PowerBI and Tableau', 100, 60),

('Ethical Hacking', 'Penetration testing, vulnerability assessment, and security audits', 100, 60),
('Docker & Kubernetes', 'Containerization and orchestration for scalable cloud applications', 100, 60),

('UI/UX Fundamentals', 'User research, wireframing, and prototyping using Figma', 100, 60),
('Unity 3D Engine', 'Building 2D and 3D interactive games using C# and Unity', 100, 60),

('Flutter App Development', 'Cross-platform mobile application development using Dart', 100, 60),

('Android Development using Kotlin', 'Building native Android applications using Kotlin and Android Studio', 100, 60),
('iOS Development using Swift', 'Building native iOS applications using Swift and Xcode', 100, 60),
('React Native', 'Cross-platform mobile app development using JavaScript and React', 100, 60)




-- Queries for Intake Table
-- Firstly insert the data into table intake

INSERT INTO [dbo].[Intake] (IntakeName , IntakeYear)
VALUES 
('Intake 39' , 2019),
('Intake 40' , 2020),
('Intake 41' , 2021),
('Intake 42' , 2022),
('Intake 43' , 2023),
('Intake 44' , 2024),
('Intake 45' , 2025),
('Intake 46' , 2026)




--seeding 15 courses in the software engineering department
INSERT INTO [dbo].[Question] (
    [CourseId], 
    [QuestionType], 
    [QuestionBody], 
    [CorrectAnswer]
)
VALUES 
   
    (1, 'Text', 'What is the difference between value types and reference types in C#?', 'Value types store data directly in memory (stack), while reference types store a memory address (heap).'),
    (1, 'TF', 'C# supports multiple inheritance for classes.', 'False'),
    (1, 'TF', 'The using statement ensures the correct use of IDisposable objects.', 'True'),
    (1, 'MCQ', 'Which symbol is used to inherit a class in C#?', ':'),
    (1, 'MCQ', 'What is the default access modifier for a class in C#?', 'internal'),
    (1, 'MCQ', 'Which method is the main entry point for a C# console application?', 'Main'),

    
    (2, 'Text', 'Explain the concept of Polymorphism.', 'Polymorphism allows methods to do different things based on the object it is acting upon, typically through method overriding.'),
    (2, 'TF', 'Encapsulation is used to hide the internal state of an object from the outside.', 'True'),
    (2, 'TF', 'A child class can directly access the private members of its parent class.', 'False'),
    (2, 'MCQ', 'Which core concept is primarily achieved by using interfaces?', 'Abstraction'),
    (2, 'MCQ', 'What is method overloading?', 'Same method name, different parameters'),
    (2, 'MCQ', 'Which keyword prevents a class from being inherited?', 'sealed'),

   
    (3, 'Text', 'What is the purpose of the alt attribute in an image tag?', 'It provides alternative text for screen readers or if the image fails to load.'),
    (3, 'TF', 'HTML tags are strictly case-sensitive.', 'False'),
    (3, 'TF', 'The <head> section contains metadata about the document, like the title.', 'True'),
    (3, 'MCQ', 'Which tag is used to create a hyperlink?', '<a>'),
    (3, 'MCQ', 'Which HTML element is used to define the largest heading?', '<h1>'),
    (3, 'MCQ', 'What does HTML stand for?', 'Hyper Text Markup Language'),


	(4, 'Text', 'What is the purpose of the <canvas> element in HTML5?', 'It is used to draw graphics on a web page dynamically using JavaScript.'),
    (4, 'TF', 'HTML5 introduced new semantic tags like <article>, <section>, and <nav>.', 'True'),
    (4, 'TF', 'The <video> tag in HTML5 requires a third-party plugin like Flash to work.', 'False'),
    (4, 'MCQ', 'Which input type was introduced in HTML5 specifically for entering a date?', 'date'),
    (4, 'MCQ', 'What is the purpose of the localStorage object in HTML5?', 'Stores data with no expiration date'),
    (4, 'MCQ', 'Which HTML5 attribute specifies that an input field must be filled out before submitting?', 'required'),

    (5, 'Text', 'Explain the CSS Box Model.', 'A box that wraps around every HTML element, consisting of margins, borders, padding, and the actual content.'),
    (5, 'TF', 'Inline styles have the highest specificity compared to internal and external stylesheets.', 'True'),
    (5, 'TF', 'In CSS, a class selector is defined using a hash (#) symbol.', 'False'),
    (5, 'MCQ', 'Which CSS property is used to control the text size?', 'font-size'),
    (5, 'MCQ', 'How do you select an element with the id attribute "demo" in CSS?', '#demo'),
    (5, 'MCQ', 'What is the default value of the position property in CSS?', 'static'),

    (6, 'Text', 'What are CSS3 Media Queries primarily used for?', 'They apply CSS rules only if certain conditions are met, which is essential for responsive web design.'),
    (6, 'TF', 'The CSS3 Flexbox layout model is designed strictly for two-dimensional layouts (rows and columns simultaneously).', 'False'),
    (6, 'TF', 'The opacity property in CSS3 affects both the background and the text content of an element.', 'True'),
    (6, 'MCQ', 'Which CSS3 property is used to create rounded corners?', 'border-radius'),
    (6, 'MCQ', 'What does the unit "vw" stand for in CSS3?', 'Viewport Width'),
    (6, 'MCQ', 'Which CSS3 property is used to add a shadow effect directly to text?', 'text-shadow'),


	(7, 'Text', 'Explain event delegation in JavaScript.', 'Event delegation is a technique involving adding a single event listener to a parent element to manage events for all of its descendants.'),
    (7, 'TF', 'In JavaScript, null and undefined are strictly equal (===).', 'False'),
    (7, 'TF', 'The DOM is an API for interacting with HTML and XML documents.', 'True'),
    (7, 'MCQ', 'Which method is used to parse a JSON string into a JavaScript object?', 'JSON.parse()'),
    (7, 'MCQ', 'What keyword is used to declare a block-scoped variable?', 'let'),
    (7, 'MCQ', 'Which function is used to set a timer that executes a callback after a specified delay?', 'setTimeout()'),

    (8, 'Text', 'What is a Promise in ES6?', 'A Promise is an object representing the eventual completion or failure of an asynchronous operation.'),
    (8, 'TF', 'Arrow functions have their own "this" binding.', 'False'),
    (8, 'TF', 'The spread operator (...) can be used to merge arrays.', 'True'),
    (8, 'MCQ', 'Which feature allows you to extract properties from objects into distinct variables?', 'Destructuring'),
    (8, 'MCQ', 'How do you define a template literal in ES6?', 'Backticks (`)'),
    (8, 'MCQ', 'Which array method returns a new array with all elements that pass a test?', 'filter()'),

    (9, 'Text', 'What is a primary key?', 'A primary key is a column or set of columns that uniquely identifies each row in a table.'),
    (9, 'TF', 'A LEFT JOIN returns all records from the right table, and the matched records from the left table.', 'False'),
    (9, 'TF', 'The WHERE clause is used to filter records before any groupings are made.', 'True'),
    (9, 'MCQ', 'Which SQL statement is used to remove a table from a database?', 'DROP TABLE'),
    (9, 'MCQ', 'What does the COUNT() function do?', 'Returns the number of rows that match a specified criterion'),
    (9, 'MCQ', 'Which keyword is used to sort the result set?', 'ORDER BY'),

	(10, 'Text', 'Explain the MVC architectural pattern.', 'Model-View-Controller is a pattern that separates an application into three main logical components: data (Model), user interface (View), and user input logic (Controller).'),
    (10, 'TF', 'Views in ASP.NET Core MVC typically use the Razor markup syntax.', 'True'),
    (10, 'TF', 'Routing in ASP.NET Core MVC only maps URLs to physical files on the server.', 'False'),
    (10, 'MCQ', 'Which folder typically contains the Razor files in an ASP.NET Core MVC project?', 'Views'),
    (10, 'MCQ', 'What is the primary role of a Controller in MVC?', 'Handles user requests and builds the response'),
    (10, 'MCQ', 'Which method is typically used in a controller to return an HTML page?', 'View()'),

    (11, 'Text', 'What is the main benefit of using TypeScript over standard JavaScript?', 'TypeScript introduces static typing, which helps catch errors at compile-time rather than at runtime.'),
    (11, 'TF', 'TypeScript code runs directly in the browser without needing any compilation or transpilation.', 'False'),
    (11, 'TF', 'TypeScript supports interfaces, whereas standard JavaScript does not.', 'True'),
    (11, 'MCQ', 'Which file extension is primarily used for TypeScript files?', '.ts'),
    (11, 'MCQ', 'Which keyword is used to define a custom structural type or contract in TypeScript?', 'interface'),
    (11, 'MCQ', 'Which configuration file is used to manage TypeScript compiler settings in a project?', 'tsconfig.json'),

    (12, 'Text', 'What is the purpose of a directive in Angular?', 'Directives are classes that add new behavior or modify the existing behavior of elements in the DOM.'),
    (12, 'TF', 'Angular is a framework developed and maintained by Facebook.', 'False'),
    (12, 'TF', 'Two-way data binding in Angular is typically achieved using the [(ngModel)] syntax.', 'True'),
    (12, 'MCQ', 'Which decorator is used to define an Angular component?', '@Component'),
    (12, 'MCQ', 'What is the primary purpose of the Angular CLI?', 'To initialize, develop, scaffold, and maintain Angular applications'),
    (12, 'MCQ', 'Which lifecycle hook is called once after the components data-bound properties have been initialized?', 'ngOnInit()'),

	(13, 'Text', 'What is the Virtual DOM in React?', 'The Virtual DOM is a lightweight JavaScript representation of the actual DOM used to optimize rendering performance.'),
    (13, 'Text', 'Explain the concept of a Higher-Order Component (HOC).', 'An HOC is an advanced technique in React for reusing component logic by wrapping a component within another function.'),
    (13, 'TF', 'React is a full-fledged MVC framework.', 'False'),
    (13, 'TF', 'Props are passed into a component and are strictly read-only.', 'True'),
    (13, 'MCQ', 'Which React hook is primarily used to perform side effects in functional components?', 'useEffect'),
    (13, 'MCQ', 'Which state management library is most commonly associated with React applications?', 'Redux'),
    (13, 'MCQ', 'In React 18, which method is used to initialize the root for rendering?', 'createRoot()'),

    (14, 'Text', 'Describe the Node.js runtime environment.', 'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser.'),
    (14, 'TF', 'Node.js handles concurrent requests using a highly multi-threaded architecture.', 'False'),
    (14, 'TF', 'Express.js is a minimal and flexible Node.js web application framework.', 'True'),
    (14, 'MCQ', 'Which core module is used to create a web server in Node.js?', 'http'),
    (14, 'MCQ', 'What is the default package manager that comes bundled with Node.js?', 'npm'),

    (15, 'Text', 'What is a document in the context of MongoDB?', 'A document is a record in a MongoDB collection and the basic unit of data, composed of field and value pairs.'),
    (15, 'TF', 'MongoDB stores data in rigid, relational tables with predefined schemas.', 'False'),
    (15, 'MCQ', 'What binary format does MongoDB use to store documents on disk?', 'BSON'),
    (15, 'MCQ', 'Which method is used to add a single document to a MongoDB collection?', 'insertOne()'),
    (15, 'MCQ', 'What field is automatically generated by MongoDB to uniquely identify every document?', '_id');


INSERT INTO [dbo].[Choice] (
    [QuestionId], 
    [ChoiceText]
)
VALUES 
   
   
    (4, ':'), (4, 'extends'), (4, 'implements'), (4, 'inherits'),
    (5, 'internal'), (5, 'public'), (5, 'private'), (5, 'protected'),
    (6, 'Main'), (6, 'Start'), (6, 'Init'), (6, 'Execute'),
    (10, 'Abstraction'), (10, 'Encapsulation'), (10, 'Inheritance'), (10, 'Polymorphism'),
    (11, 'Same method name, different parameters'), (11, 'Same method name, same parameters'), 
    (11, 'Different method name, same parameters'), (11, 'Inheriting a method from a parent'),
    (12, 'sealed'), (12, 'static'), (12, 'final'), (12, 'const'),
    (16, '<a>'), (16, '<link>'), (16, '<href>'), (16, '<url>'),
    (17, '<h1>'), (17, '<heading>'), (17, '<h6>'), (17, '<head>'),
    (18, 'Hyper Text Markup Language'), (18, 'Hyperlinks and Text Markup Language'), 
    (18, 'Home Tool Markup Language'), (18, 'Hyper Tool Markup Language'),
	(22, 'date'), (22, 'datetime'), (22, 'calendar'), (22, 'time'),
    (23, 'Stores data with no expiration date'), (23, 'Stores data for one session only'), (23, 'Stores data securely on the database server'), (23, 'Stores temporary variables for functions'),
    (24, 'required'), (24, 'mandatory'), (24, 'validate'), (24, 'important'),
    (28, 'font-size'), (28, 'text-style'), (28, 'text-size'), (28, 'font-weight'),
    (29, '#demo'), (29, '.demo'), (29, 'demo'), (29, '*demo'),
    (30, 'static'), (30, 'relative'), (30, 'absolute'), (30, 'fixed'),
    (34, 'border-radius'), (34, 'corner-radius'), (34, 'box-round'), (34, 'border-style'),
    (35, 'Viewport Width'), (35, 'Visual Width'), (35, 'Vertical Width'), (35, 'View Window'),
    (36, 'text-shadow'), (36, 'font-shadow'), (36, 'shadow-text'), (36, 'box-shadow'),
	(40, 'JSON.parse()'), (40, 'JSON.stringify()'), (40, 'JSON.object()'), (40, 'JSON.toObject()'),
    (41, 'let'), (41, 'var'), (41, 'constant'), (41, 'def'),
    (42, 'setTimeout()'), (42, 'setInterval()'), (42, 'setDelay()'), (42, 'setTimer()'),
    (46, 'Destructuring'), (46, 'Spread syntax'), (46, 'Rest parameters'), (46, 'Interpolation'),
    (47, 'Backticks (`)'), (47, 'Single quotes ('')'), (47, 'Double quotes (")'), (47, 'Parentheses ()'),
    (48, 'filter()'), (48, 'map()'), (48, 'reduce()'), (48, 'forEach()'),
    (52, 'DROP TABLE'), (52, 'DELETE TABLE'), (52, 'REMOVE TABLE'), (52, 'TRUNCATE TABLE'),
    (53, 'Returns the number of rows that match a specified criterion'), (53, 'Returns the sum of a numeric column'), (53, 'Returns the average value of a numeric column'), (53, 'Returns the highest value'),
    (54, 'ORDER BY'), (54, 'SORT BY'), (54, 'GROUP BY'), (54, 'ALIGN BY'),
	(58, 'Views'), (58, 'Pages'), (58, 'Controllers'), (58, 'Models'),
    (59, 'Handles user requests and builds the response'), (59, 'Stores database records physically'), (59, 'Styles the HTML elements'), (59, 'Provides a physical network connection'),
    (60, 'View()'), (60, 'Html()'), (60, 'Render()'), (60, 'Display()'),
    (64, '.ts'), (64, '.tx'), (64, '.tsc'), (64, '.script'),
    (65, 'interface'), (65, 'class'), (65, 'struct'), (65, 'module'),
    (66, 'tsconfig.json'), (66, 'package.json'), (66, 'angular.json'), (66, 'webpack.config.js'),
    (70, '@Component'), (70, '@Injectable'), (70, '@Module'), (70, '@Directive'),
    (71, 'To initialize, develop, scaffold, and maintain Angular applications'), (71, 'To write server-side database queries'), (71, 'To compile C# code into WebAssembly'), (71, 'To manage Docker containers'),
    (72, 'ngOnInit()'), (72, 'ngOnDestroy()'), (72, 'ngAfterViewInit()'), (72, 'ngOnChanges()'),
	(77, 'useEffect'), (77, 'useState'), (77, 'useContext'), (77, 'useReducer'),
    (78, 'Redux'), (78, 'Vuex'), (78, 'NgRx'), (78, 'MobX'),
    (79, 'createRoot()'), (79, 'render()'), (79, 'mount()'), (79, 'append()'),
    (83, 'http'), (83, 'fs'), (83, 'path'), (83, 'url'),
    (84, 'npm'), (84, 'yarn'), (84, 'pnpm'), (84, 'pip'),
    (87, 'BSON'), (87, 'JSON'), (87, 'XML'), (87, 'CSV'),
    (88, 'insertOne()'), (88, 'addOne()'), (88, 'create()'), (88, 'insert()'),
    (89, '_id'), (89, 'id'), (89, 'primary_key'), (89, 'key');


