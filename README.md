

## Promot

1. Transaction
   ```markdown
   Please translate the following text into **Trandition Chinese**, do not provide any translation, comments, or notes: 
   ```
2. Correction
   ```
   Please correct the grammar and polish the following sentences, do not provide any translation, comments, or notes, and use the same language as input: \n\n
   ```

### Story

### #1
```
User's main language is Traditional Chinese
wants to translate the given chinese text into English
```

#### Scenarios
```
Given the user pastes a Traditional Chinese text
When the local system already has a cached result
Then display the translated result

Given the user pastes a Traditional Chinese text
When the loacl system doesn't have it cached
Then translate the given text by OpenAI
  and display the translated result
  but if the API return an error
  display the error message
```

### #2
```
User's main language is Chinese(Traditional)
want to correction the grammar and typos in the given english text
and then translate it into english
```

#### Scenarios
```
Given the user pastes an English text
When the local system already has a cached result
Then display the expected result
  1. the corrected result
  2. the Traditional Chinese translation

Given the user pastes an English text
When the loacl system doesn't have it cached
Then call OpenAI API to get the expected result
  and display the result
  but if the API return an error
  display the error message
```

