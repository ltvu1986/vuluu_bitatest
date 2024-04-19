Read Me

# Instructions
This is technical test provided by Bita corporation "Make a crawling system to crawl products of a website"

#Steps to install
1. Clone the Repository: Clone the repository containing the Laravel application code to your local machine.
   git clone https://github.com/ltvu1986/vuluu_bitatest.git
  
2. Install Dependencies: Navigate to the project directory and install Composer dependencies.
	composer install
3. Configure Environment Variables: Set up any necessary environment variables required for the application to run properly (posible using Xampp/Wampp)
4. Create database name "bita" and import SQL script "https://github.com/ltvu1986/vuluu_bitatest/blob/main/bita.sql" 
5. Run the Application: Start the Laravel development server and ensure that the application is running without errors
	php artisan serve
6. Access the Home Route: Open a web browser and navigate to the home route of the application (usually http://localhost:8000).

#Notes
1. Type command to make crawl Lazada products listed in url "https://www.lazada.vn/locklock-flagship-store/?q=All-Products&from=wangpu&langFlag=vi&pageTypeId=2" 
  php artisan crawl:lazada-products


Demo link: 
