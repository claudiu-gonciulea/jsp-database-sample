create database digital_credentials;

-- the table incorporates courses and badges from cognitiveclass.io
create table cognitive_class (
	id int NOT NULL AUTO_INCREMENT,
	course_name varchar(150) not null unique,
	badge_name varchar(150),
	badge_type varchar(50),
	cognitive_class_url varchar(300),
	your_acclaim_url varchar(300),
	course_description varchar(1000),
	badge_description varchar(1000),
	knowledge_level varchar(15),		-- Beginner, Intermediate, Advanced
	status varchar(10),

	my_note varchar(500),
	
	primary key (id)
);


insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Robots are coming! Build IoT apps with Watson AI, Swift, and Node-RED', 'Robots are coming! Build IoT apps with Watson AI, Swift, and Node-RED', 'https://cognitiveclass.ai/courses/robots-are-coming/', 'https://www.youracclaim.com/org/ibm/badge/robots-are-coming-build-iot-apps-with-watson-ai-swift-and-node-red', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Docker Essentials: A Developer Introduction', 'Docker Essentials: A Developer Introduction', 'https://cognitiveclass.ai/courses/docker-essentials/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Building Robots with TJBot', 'Building Robots with TJBot', 'https://cognitiveclass.ai/courses/build-robots-with-tjbot/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('IBM Blockchain Foundation Developer', 'IBM Blockchain Foundation Developer', 'https://cognitiveclass.ai/courses/ibm-blockchain-foundation-dev/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Node-RED: Basics to Bots', '', 'https://cognitiveclass.ai/courses/node-red-basics-to-bots/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Blockchain Essentials', 'Blockchain Essentials', 'https://cognitiveclass.ai/courses/blockchain-course/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Big Data 101', 'Big Data Foundations - Level 1', 'https://cognitiveclass.ai/courses/what-is-big-data/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Hadoop 101', 'Hadoop Foundations - Level 1', 'https://cognitiveclass.ai/courses/introduction-to-hadoop/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Introduction to Data Science', '', 'https://cognitiveclass.ai/courses/data-science-101/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Build Your Own Chatbot', 'Build Your Own Chatbot', 'https://cognitiveclass.ai/courses/how-to-build-a-chatbot/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Python for Data Science', 'Python for Data Science', 'https://cognitiveclass.ai/courses/python-for-data-science/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('R 101', '', 'https://cognitiveclass.ai/courses/r-101/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Visualization with Python', '', 'https://cognitiveclass.ai/courses/data-visualization-with-python/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Machine Learning with Python', 'Machine Learning with Python', 'https://cognitiveclass.ai/courses/machine-learning-with-python/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Deep Learning Fundamentals', '', 'https://cognitiveclass.ai/courses/introduction-deep-learning/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Reactive Architecture: Introduction to Reactive Systems', '', 'https://cognitiveclass.ai/courses/reactive-architecture-introduction/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Reactive Architecture: Domain Driven Design', '', 'https://cognitiveclass.ai/courses/reactive-architecture-ddd/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('How to Build Watson AI and Swift APIs and Make Money', 'Build AI & Swift APIs & Make Money', 'https://cognitiveclass.ai/courses/swift-ai-monetize-course/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Beyond the Basics: Istio and IBM Cloud Kubernetes Service', 'Beyond the Basics: Istio and IBM Cloud Kubernetes Service', 'https://cognitiveclass.ai/courses/beyond-the-basics-istio-and-ibm-cloud-kubernetes-service/', '', 'Advanced');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Deep Learning with TensorFlow', '', 'https://cognitiveclass.ai/courses/deep-learning-tensorflow/', '', 'Advanced');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Watson Analytics 101 (Archived)', 'Watson Analytics - Level 1', 'https://cognitiveclass.ai/courses/introduction-watson-analytics/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Machine Learning with R', '', 'https://cognitiveclass.ai/courses/machine-learning-r/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Analysis with Python', '', 'https://cognitiveclass.ai/courses/data-analysis-python/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Visualization with R', '', 'https://cognitiveclass.ai/courses/data-visualization-with-r/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Spark Fundamentals I', 'Spark - Level 1', 'https://cognitiveclass.ai/courses/what-is-spark/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Science Methodology', '', 'https://cognitiveclass.ai/courses/data-science-methodology-2/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Statistics 101', '', 'https://cognitiveclass.ai/courses/statistics-101/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Accelerating Deep Learning with GPU', '', 'https://cognitiveclass.ai/courses/accelerating-deep-learning-gpu/', '', 'Advanced');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('SQL and Relational Databases 101', '', 'https://cognitiveclass.ai/courses/learn-sql-relational-databases/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Using R with Databases', '', 'https://cognitiveclass.ai/courses/using-r-with-databases/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Bitcoin 101', '', 'https://cognitiveclass.ai/courses/introduction-to-bitcoin/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Scala 101', '', 'https://cognitiveclass.ai/courses/introduction-to-scala/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Science Tools', '', 'https://cognitiveclass.ai/courses/data-science-hands-open-source-tools-2/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Journalism: First Steps, Skills and Tools', '', 'https://cognitiveclass.ai/courses/introduction-data-journalism/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('NoSQL and DBaaS 101', '', 'https://cognitiveclass.ai/courses/introduction-nosql-dbaas/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('MapReduce and YARN', 'Hadoop Programming – Level 1', 'https://cognitiveclass.ai/courses/mapreduce-and-yarn/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Spark MLlib', '', 'https://cognitiveclass.ai/courses/spark-mllib/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Exploring Spark’s GraphX', '', 'https://cognitiveclass.ai/courses/spark-graphx/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Container & Kubernetes Essentials with IBM Cloud', 'Getting Started with Containers on IBM Cloud', 'https://cognitiveclass.ai/courses/kubernetes-course/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Getting started with Microservices with Istio and IBM Cloud Kubernetes Service', 'Getting started with Microservices with Istio and IBM Cloud Kubernetes Service', 'https://cognitiveclass.ai/courses/get-started-with-microservices-istio-and-ibm-cloud-container-service/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Machine learning with Apache SystemML', '', 'https://cognitiveclass.ai/courses/machine-learning-apache-systemml/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Predictive Modeling Fundamentals I', '', 'https://cognitiveclass.ai/courses/predictive-modeling-fundamentals/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Analyzing Big Data in R using Apache Spark', '', 'https://cognitiveclass.ai/courses/analyzing-big-data-r-using-apache-spark/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Apache Pig 101', '', 'https://cognitiveclass.ai/courses/introduction-to-pig/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Spark Overview for Scala Analytics', '', 'https://cognitiveclass.ai/courses/spark-overview-scala-analytics/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Simplifying Data Pipelines with Apache Kafka', '', 'https://cognitiveclass.ai/courses/simplifyingdatapipelines/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Science with Scala', '', 'https://cognitiveclass.ai/courses/data-science-scala/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Machine Learning – Dimensionality Reduction', '', 'https://cognitiveclass.ai/courses/machine-learning-dimensionality-reduction/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Privacy Fundamentals', 'Data Science for Business - Level 1', 'https://cognitiveclass.ai/courses/data-privacy/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Digital Analytics & Regression', '', 'https://cognitiveclass.ai/courses/applied-data-science-digital-analytics-regression/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Spark Fundamentals II', '', 'https://cognitiveclass.ai/courses/spark-rdd/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Mathematical Optimization for Business Problems', '', 'https://cognitiveclass.ai/courses/mathematical-optimization-for-business-problems/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('SQL Access for Hadoop', '', 'https://cognitiveclass.ai/courses/sql-access-for-hadoop/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Using HBase for Real-time Access to your Big Data', '', 'https://cognitiveclass.ai/courses/using-hbase-for-real-time-access-to-your-big-data/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Text Analytics 101 (ARCHIVED)', '', 'https://cognitiveclass.ai/courses/systemt/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Text Analytics at Scale (ARCHIVED)', '', 'https://cognitiveclass.ai/courses/adv-text-analytics-getting-results-with-systemt/', '', 'Advanced');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('大数据统计分析技术', '', 'https://cognitiveclass.ai/courses/%E5%A4%A7%E6%95%B0%E6%8D%AE%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90%E6%8A%80%E6%9C%AF/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('大数据分析之数据挖掘技术', '', 'https://cognitiveclass.ai/courses/%E5%A4%A7%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90%E4%B9%8B%E6%95%B0%E6%8D%AE%E6%8C%96%E6%8E%98%E6%8A%80%E6%9C%AF/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Accessing Hadoop Data Using Hive', 'Hadoop Data Access - Level 1', 'https://cognitiveclass.ai/courses/hadoop-hive/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Developing Distributed Applications Using ZooKeeper', '', 'https://cognitiveclass.ai/courses/developing-distributed-applications-using-zookeeper/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Controlling Hadoop Jobs Using Oozie', '', 'https://cognitiveclass.ai/courses/controlling-hadoop-jobs-using-oozie/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Moving Data into Hadoop', 'Hadoop Administration - Level 1', 'https://cognitiveclass.ai/courses/flume-sqoop-moving-data-into-hadoop/', '', 'Intermediate');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Solr 101', '', 'https://cognitiveclass.ai/courses/introduction-to-solr/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('OpenRefine 101', '', 'https://cognitiveclass.ai/courses/introduction-to-openrefine/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Getting Started with the Data: Apache Spark Makers Build', '', 'https://cognitiveclass.ai/courses/apachesparkmakersbuild/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Science Methodology - Version 1 (Archived)', '', 'https://cognitiveclass.ai/courses/data-science-methodology/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Big Data 101 (Archived)', 'Big Data Foundations - Level 1', 'https://cognitiveclass.ai/courses/introduction-to-big-data/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Analysis with R (Coming Soon!)', '', 'https://cognitiveclass.ai/courses/data-analysis-r/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Data Science Hands-on with Open Source Tools (Archived)', '', 'https://cognitiveclass.ai/courses/data-science-hands-open-source-tools/', '', 'Beginner');
	
insert into cognitive_class (course_name, badge_name, cognitive_class_url, your_acclaim_url, knowledge_level)
	values ('Reactive Architecture: Reactive Microservices (Coming Soon!)', '', 'https://cognitiveclass.ai/courses/reactive-architecture-microservices/', '', 'Beginner');
	
	
select course_name, badge_name, cognitive_class_url from cognitive_class;
select count(*) from cognitive_class;