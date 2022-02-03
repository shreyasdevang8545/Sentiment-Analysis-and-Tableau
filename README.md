# Sentiment-Analysis

Sentiment Analysis is the process of determining whether a piece of writing is positive, negative or neutral. A sentiment analysis system for text analysis combines natural language processing (NLP) and machine learning techniques to assign weighted sentiment scores to the entities, topics, themes and categories within a sentence or phrase.

Problem overview:
Sentiment analysis helps data analysts within large enterprises gauge public opinion, conduct nuanced market research, monitor brand and product reputation, and understand customer experiences. In addition, data analytics companies often integrate third-party sentiment analysis APIs into their own customer experience management, social media monitoring, or workforce analytics platform, in order to deliver useful insights to their own customers.

The following main packages are used in this article

    > tm for text mining operations like removing numbers, special characters, punctuations and stop words (Stop words in any language are the most commonly occurring words that have very little value for NLP and should be filtered out
    > ord cloud for generating the word cloud plot.
    > syuzhet for sentiment scores and emotion classification
    > ggplot2 for plotting graphs
    
    
 # Tableau  
 Tableau can now connect to R through calculated fields and take advantage of R functions, libraries, packages and even saved models. These calculations dynamically invoke the R engine and pass values to R via the Rserve package, and are returned back to Tableau.
 
 Today, it has become essential for BI solutions to provide a means to connect with tools such as R and Python to enable on-the-fly Data Science analyses such as Predictive modeling, Sentiment Analysis, Text Mining, etc. On this front too, Tableau delivers successfully with its R and Python integration. 

The Tableau- R integration is a huge relief for Data Scientists and Analysts who are currently grappling with the problem of creating intuitive and interactable visualizations with their models created in R and presenting it to their users. Forget the hassle of working in different environments for predictive modeling and reporting. Forget the complexities of connecting the R model to Tableau and finding a way to join or blend it with other data in Tableau. Forget finding a way to schedule R models to run to refresh data inside Tableau.  

The required R model can be built from inside the Tableau Report and the results can be analyzed on-the-fly!  Quite neat right? 

Tableau can integrate with both Python and R in this manner, but as per the title, this blog will be focusing only on Tableau – R integration in detail. 

So how does Tableau integrate with R?  It is through the Calculated fields. Tableau provides 4 scripting functions to pass R scripts and parameters to the R server, which then runs the scripts and returns the result. The 4 scripting functions are: 

    SCRIPT_REAL
    SCRIPT_STR
    SCRIPT_INT
    SCRIPT_BOOL
