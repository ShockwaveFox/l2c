#### CI/CD
- CI/CD stands for 
    - Continuous Integration and 
    - Continuous Delivery/Deployment
- Both CI and CD together are referred to as a CI/CD Pipeline

#### Continuous Integration
- CI relates to frequesntly and automatically adding code changes to a code repository
- Continuous Delivery/Deployment has 2 parts that involves 
    - integration of new code
    - testing of new code
    - delivery of the new code changes
- This is supported by Operations and Development teams
- Ci/CD helps keep a continuous cycle of updates flowing while avoiding bugs and failures in code
- CI is an automated proces for developers to merge code changes into shared branches
- Automated testing scripts are run against these merges to ensurethe code works
- This helps when there are lots of different developers working on the same code
- Multiple different code moerges could conflict with each other and cause issues
- Automated testing helps find these bugs beforehand to allow quicker fixing of them

#### Continuous Delivery
- Continuous Delivery is an automated process of adding tested code into a repository
- CD is reliant on CI being set up first to ensure testing is done on the code before merging
- All code changes made by developers will have automatic bug testing and automatic uploads to a repository
- This allows the code to be released to production quicker by operations teams

#### Continuous Deployment
- Continuous Deployment is the final stage in a CI/CD pipeline
- It refers to releasing code changes automatically to production
- It removes the work of deploying to production from the operations teams
- Code changes can be deployed in minutes if they pass all prior testing
- This allows small, regular changes to be made and reviewed
- Strong automated testing needs to be set up or this can cause issues in production

#### CI/CD in DevOps
- CI/CD aims to improve collaboration between development and Operations
- It can improve the speed features are developed and released to customers
- DevSecOps adds Security built in as a foundational element