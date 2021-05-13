The dataset which I used to explore RFM capabilities can be found in Kaggle: https://www.kaggle.com/marian447/retail-store-sales-transactions

The anonymized dataset includes 64.682 transactions of 5.242 SKU's sold to 22.625 customers during one year.

Here is the head view of dataset:

![image](https://user-images.githubusercontent.com/56751567/118113830-749e0200-b3ef-11eb-8745-bb405e341f8a.png)

Results:

RFM algorithm creates a list of each customer’s behavior. For example, the first customer has not bought anything in 344 days. The total number of transactions is two, but amount of items is 15. Having this data, the algorithm can give a recency and frequency scores. 

![image](https://user-images.githubusercontent.com/56751567/118118521-b5007e80-b3f5-11eb-9f80-dc7c750b1312.png)

RFM Heat Map shows that higher scores for recency and frequency is associated with bigger mean monetary value. Although, we can see that frequency is more important than recency. 

![image](https://user-images.githubusercontent.com/56751567/118119344-e594e800-b3f6-11eb-8bab-29beac027064.png)

R library RFM has a variaty of different plot choices. There is ability to relation between each of three analysis point: Frequency, Monetary and Recency. The picture below shows that there is a strong relation between monetary value and frequency. However, recency doesn’t seem to be a huge factor which could impact monetary or frequency value. 

![image](https://user-images.githubusercontent.com/56751567/118120119-0dd11680-b3f8-11eb-87d6-b1e24c12102a.png)

Finally, customers are devided into segments according to scores we have already computed. Each cusmoter is added to a specific segment. For example, first customer is lost while the third one is a risk. 

![image](https://user-images.githubusercontent.com/56751567/118121012-7bca0d80-b3f9-11eb-9f06-4c958c95c45a.png)

Using computed scores once again we are able to visualize the results. 
