install.packages("tidyverse")
install.packages("syuzhet")
install.packages("tidytext")

library(tidyverse)
library(syuzhet)
library(tidytext)

emotions <- get_nrc_sentiment(covid19_tweets$text)
emo_bar <- colSums(emotions)
emo_sum <- data.frame(count=emo_bar,emotion=names(emo_bar))

ggplot(emo_sum, aes(x=reorder(emotion, -count), y=count))+
  geom_bar(stat = 'identity')

bing_word_counts <- covid19_tweets %>% unnest_tokens(output = word,input = text) %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, sort = TRUE)

bing_top_10_words_by_sentiment <- bing_word_counts %>%
group_by(sentiment) %>%
  slice_max(order_by = n, n=20) %>%
  ungroup() %>%
  mutate(word = reorder(word,n))
bing_top_10_words_by_sentiment


bing_top_20_words_by_sentiment %>%
  ggplot(aes(word,n,fill=sentiment))+
  geom_col(show.legend = FALSE)+
  facet_wrap(~sentiment, scales = "free_y")+
  labs(y="Contribution to sentiment", x=NULL)+
  coord_flip()

loughran_word_count <- covid19_tweets %>% unnest_tokens(output = word, input = text) %>%
  inner_join(get_sentiments("loughran")) %>%
  count(word, sentiment, sort = TRUE)

loughran_top_20_words_by_sentiment <- loughran_word_count %>%
  group_by(sentiment) %>%
  slice_max(order_by = n, n=10) %>%
  ungroup() %>%
  mutate(word = reorder(word,n))
loughran_top_20_words_by_sentiment

loughran_top_20_words_by_sentiment%>%
  ggplot(aes(word,n,fill=sentiment))+
  geom_col(show.legend = FALSE)+
  facet_wrap(~sentiment, scales = "free_y")+
  labs(y="Contribution to sentiment", x=NULL)+
  coord_flip()
