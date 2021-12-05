##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.7.1]
- Rails [6.0.2]

##### 1. Check out the repository

bash
git clone git@github.com:sagarsaindre21/gvmTechAssignment.git


##### 2. Setup database.yml file

Set your postgres username and password

##### 3. Create and setup the database

Run the following commands to create and setup the database.

ruby
rake db:create
rake db:migrate


##### 4. Start the Rails server

You can start the rails server using the command given below.

ruby
rails s


And now you can visit the site with the URL http://localhost:3000


##### Screenshots



![LandingPage](https://user-images.githubusercontent.com/81550057/144756572-a131c2a0-146d-44ea-9dcb-5cdb700fa839.png)
![LoginPage](https://user-images.githubusercontent.com/81550057/144756573-afab4ce2-b1e2-4ecd-ac2a-87e06eb5bf07.png)
![NewProductForm](https://user-images.githubusercontent.com/81550057/144756575-9a210892-4850-409e-a49e-56b53698a26f.png)
![OrderDetails](https://user-images.githubusercontent.com/81550057/144756576-f69e9eae-1d2c-44cd-9729-63cacfbb53a3.png)
![OrderListings](https://user-images.githubusercontent.com/81550057/144756580-101ce691-10c1-4dd1-b17c-2d7fe8a5b5f9.png)
![ProductListings](https://user-images.githubusercontent.com/81550057/144756581-603ddcb5-58e5-4481-ae34-0c46ceebccba.png)
![ProductsInCart](https://user-images.githubusercontent.com/81550057/144756585-1e01bb3a-dae8-4ad7-b85e-e36ac5fa5ae4.png)
![SignUpPage](https://user-images.githubusercontent.com/81550057/144756588-60f593df-2f84-4ea8-a18f-d86ae26c783e.png)
![UserListings](https://user-images.githubusercontent.com/81550057/144756590-8020b902-263a-457e-83dd-a53a5385e914.png)
