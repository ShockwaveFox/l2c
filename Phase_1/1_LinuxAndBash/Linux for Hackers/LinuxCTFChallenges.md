#### Linux CTF Challenge - thoughs and experiences

- I am adding this review page for the CTF challenges to track my experiences working through these and my thought process on solving them.

#### Set up
- Using a free tier Azure subscription I was unable to use the pre-defined Standard_B1s VMs in the Terraform file.
- Using co-pilot I have the below command that allows me to check different VM sizes available in different locations -
`az vm list-skus --location northeurope --size Standard_d2ads_v7 --output table`
- It also shows if it is restricted under my free subscription

- The below machines are available in this location on my subscription to use -
`Standard_D2as_v7 Standard_D2als_v7 Standard_D2ads_v7` 

