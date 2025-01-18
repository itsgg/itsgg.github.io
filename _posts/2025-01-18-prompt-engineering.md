---
layout: post
title: Prompt Engineering
date: 2025-01-18 13:43 +0530
---

Prompt engineering is the process of designing inputs (prompts) to guide LLMs in generating meaningful, accurate, and relevant outputs.

## 1. What is Prompt Engineering?

### 1.1 Significance

- Ensures accuracy and relevance in AI response.
- Saves time by reducing iterations.
- Enables customization for specific domains or tasks.

### 1.2 Example

#### User

> Summarize this text under 50 characters, focusing on core ideas.
> "Prompt engineering is the process of designing effective inputs for AI systems to achieve specific outputs. This ensures accuracy and relevance, saving time and tailoring responses for tasks."

#### Assistant

> Designing AI inputs for accuracy and relevance.

### 1.3 Review

**Q**: What is prompt engineering?  
**A**: The process of designing inputs (prompts) to guide LLMs in generating meaningful, accurate, and relevant outputs.  

**Q**: Why is clarity important in prompt engineering?  
**A**: It ensures the AI understands the task and produces relevant results.  

**Q**: List two benefits of effective prompt engineering?  
**A**: Improved accuracy and time efficiency.  

### 1.4 Quiz

1. **What is the primary goal of prompt engineering?**
    - a. To make LLMs generate longer responses.
    - **b. To create accurate and meaningful outputs.**
    - c. To replace human intelligence entirely.

2. **Why is clarity essential in prompts?**
    - a To save time for the AI.
    - **b. To ensure the AI understands the task and generates relevant responses.**
    - c. To create confusing and ambiguous outputs.

3. **Which of the following is NOT a benefit of prompt engineering?**
    - a. Customizing AI behaviour for specific tasks.
    - b. Improving accuracy in outputs.
    - **c. Training the AI on new datasets.**

---

## 2. What Are LLMs?

Large Language Models (LLMs) are AI systems trained on extensive datasets to perform tasks like text generation, summarization, translation, and more.

### 2.1 Types

#### 2.1.1 Autoregressive Models

Predict the next word based on the previous ones.

**Example:** GPT
**Strength:** Best for creative and generative tasks

#### 2.1.2 Masked Language Models

Predict missing words within a sentence for understanding and classification tasks

**Example:** BERT
**Strength:** Excels at understanding and analysing text.

#### 2.1.3 Seq2Seq Models

Convert an input sequence into an output sequence, such as translation or summarization.

**Example:** T5
**Strength:** Ideal for structured input-output tasks.

### 2.2 Limitations

- Limited knowledge after their training cut-off.
- Susceptible to ambiguous or vague prompts.

### 2.3 Review

**Q**: What are Large Language Models (LLMs)?  
**A**: AI systems trained on extensive datasets to perform natural language processing tasks.  

**Q**: What type of model is GPT?  
**A**: An autoregressive model that predicts the next word in a sequence.  

**Q**: What is a key limitation of LLMs?  
**A**: They lack real-world knowledge post-training.  

### 2.4 Quiz

1. **What is the primary focus of autoregressive models like GPT?**
    - **a. Filling in missing words in a sentence.**
    - b. Predicting the next word in a sequence.
    - c. Translating text between languages.  
2. **Which type of LLM is best for input-output mapping tasks like summarization?**
    - a. GPT
    - b. BERT
    - **c. T5**  
3. **What is a significant limitation of LLMs?**
    - a. They cannot process long inputs.
    - ***b. They lack updated knowledge beyond their training period.***
    - c. They are incapable of generating text.  
    
---

## 3. Basic Techniques

- Keep it clear and concise.
- Include necessary context to avoid ambiguity.
- Test with variations to determine the best phrasing.

### 3.1 Types

#### 3.1.1 Descriptive Prompts

Explain the desired task or output.

**Example:** `Summarize the report on climate change for a general audience.`

#### 3.1.2 Directive Prompts

Give explicit instructions.

**Example:** `Create a summary of the report on climate change under 1000 words. List the key points discussed.`

#### 3.1.3 Conversational Prompts

Engage the AI in a natural dialogue.

**Example:** `Does the report on climate change show any bias? If yes, what are the examples or indicators?`

### 3.2 Evaluating Prompts

#### 3.2.1 Relevance

Does the output match the task?

#### 3.2.2 Accuracy

Are there factual or logical errors?

#### 3.2.3 Efficiency

Did the prompt minimize unnecessary details?

### 3.3 Review

**Q**: What is a descriptive prompt?  
**A**: A prompt that explains the desired task or output.  

**Q**: How do directive prompts differ from descriptive prompts?  
**A**: Directive prompts give explicit instructions for the task.  

**Q**: What are three criteria for evaluating a prompt?  
**A**: Relevance, accuracy, and efficiency.  

### 3.4 Quiz

1. **What is the purpose of a descriptive prompt?**
    - a. To instruct the AI to rewrite text.
    - **b. To explain the desired task or output.**
    - c. To ask the AI for its opinion.  
2. **Which type of prompt is best for natural dialogue?**
    - a. Descriptive prompt.
    - b. Directive prompt.
    - **c. Conversational prompt.**  
3. **What should you include in a prompt to avoid ambiguity?**
    - **a. Additional context.**
    - b. Minimal words.
    - c.d Complex vocabulary.  

---

## 4. Intermediate Techniques

### 4.1 Prompt Chaining

Breaking down complex tasks into smaller steps by chaining prompts. Each prompt builds on the output of the previous one.

**Example:** Instead of asking for a details article in one go, ask the AI to generate an outline first, then expand on each section.

#### 4.1.1 Naive Prompt

```
Generate a detailed report on renewable energy, including its types, benefits, and implementation challenges.
```

#### 4.1.2 Optimized Prompt

> You are a helpful reporter. Please create a detailed outline for a report on renewable energy. Include headings and subheadings for the types, benefits, and implementation challenges."

> Using the outline, create a detailed section on solar energy, covering its types, benefits, and challenges in implementation. Aim for 300–500 words.

> Review and refine the solar energy section for clarity, logical flow, and grammatical accuracy.

> Conduct a final review of the entire renewable energy report. Ensure consistency in language, tone, logic, and factual accuracy across all sections.

### 4.2 Embedding Context

Adding necessary background information or examples to guide the AI toward accurate and relevant outputs.

**Example:** Providing a definition or parameters with the prompt ensures clarity.

#### 4.2.1 Naive Prompt

> Explain the impact of renewable energy on reducing carbon emissions.

#### 4.2.2 Optimized Prompt

> Renewable energy sources such as solar, wind, and hydro power produce electricity without direct carbon emissions. Explain how adopting these energy sources reduces carbon emissions compared to fossil fuels. Include examples and statistics. Explain this in simple terms suitable for a general audience.

### 4.3 Iterative Refinement

Testing, evaluating, and tweaking prompts to improve their quality.

**Example**: Rephrasing ambiguous instructions or simplifying complex language.

#### 4.3.1 Naive Prompt

> Write a summary of a report on the enviromental benefits of renewable energy.

##### First Refinement

> Summarize the environmental benefits of renewable energy. Include examples of benefits like reduced emissions and biodiversity perservation.

##### Second Refinement

> Write a 200-word summary on the environmental benefits of renewable energy. Focus on reduced carbon emissions, biodiversity preservation, and air quality improvements. Tailor the summary for a general audience. Use a persuasive tone.

### 4.4 Review

**Q**: What is prompt chaining?  
**A**: A technique where complex tasks are broken into smaller steps, with each step building on the previous one.  

**Q**: Why is embedding context important in prompts?  
**A**: It helps guide the AI and ensures clarity, resulting in more accurate outputs.  

**Q**: What does iterative refinement involve?  
**A**: Testing, evaluating, and improving prompts for better quality.  

### 4.5 Quiz

1. **What is the main benefit of prompt chaining?**
    - **a. It simplifies complex tasks by breaking them into smaller, manageable steps.**
    - b. It speeds up the AI.
    - c. It avoids using context in prompts.  
2. **How does embedding context help the AI?**
    - a. By confusing the task.
    - **b. By guiding the AI and improving accuracy.**
    - c. By making the prompt shorter.  
3. **What is the purpose of iterative refinement?**
    - **a. To improve the quality of prompts by testing and tweaking them.**
    - b. To make the AI generate random responses.
    - c. To eliminate the need for clear instructions.

---

## 5. Advanced Optimization

### 5.1 Parameter Tuning

- Adjusting LLM parameters to influence output behaviour.

#### 5.1.1 Temperature

Controls randomness. Lower values (e.g., 0.2) yield more deterministic outputs, while higher values (e.g., 0.8) produce creative and varied responses.

##### Low Temperature

> Generate a business name for an AI startup that incorporates variations of the words 'human' and 'artificial. Keep the name under 3 words.

##### Medium Temperature

> Generate a business name for an AI startup.

##### High Temperature

> Generate a creative business name for an AI startup.

#### 5.1.2 Max Tokens

Limits the length of the output.

Control the max tokens by using `max_tokens` parameter in the API call.

Simulate the behaviour of max tokens using effective prompts.

> Describe the benefits of renewable energy in no more than 50 words.

#### 5.1.3 Stop Sequences

Specifies where the model should halt generation.

Control the stop sequence by using `stop` parameter in the API call.

Simulate the behaviour of stop sequence using effective prompts.

> List three benefits of solar energy. Use a numbered list and stop after the third point.

### 5.2 Handling Edge Cases

Designing prompts to address ambiguous or rare scenarios.

**Example:** If the question cannot be answered, say “I don't know” instead of guessing.

### 5.3 Improving Efficiency

Crafting concise prompts that yield the desired output without unnecessary complexity.

**Example:** Instead of “Explain why solar energy is useful”, use “List three benefits of solar energy.”

### 5.4 Review

**Q**: What does a low temperature setting (e.g., 0.2) do?  
**A**: Produces deterministic and focused outputs.  

**Q**: How can stop sequences improve output quality?  
**A**: By defining where the model should halt generation to avoid irrelevant content.  

**Q**: Why is concise prompting important?  
**A**: It ensures efficient outputs by minimizing ambiguity and complexity.  

### 5.5 Quiz

1. **What does a higher temperature setting (e.g., 0.8) do?**
    - **a. Increases randomness and creativity in outputs.**
    - b. Produces more focused and deterministic responses.
    - c. Reduces the length of the output.  
2. **Why are stop sequences used?**
    - a. To ensure the AI generates longer outputs.
    - **b. To specify where the AI should stop, avoiding irrelevant content.**
    - c. To increase randomness in responses.  
3. **Which of the following is an example of improving prompt efficiency?**
    - a. _“Explain why solar energy is useful.”_
    - **b. _“List three benefits of solar energy.”_**
    - c. _“Write a detailed article on renewable energy.”_

---

## 6. Real-World Applications

### 6.1 Domain-Specific Applications

Tailor prompts for specific fields like content creation, coding, customer service, or education.

#### Example

> Generate a 300 word blog post about the benefits of AI in education.

### 6.2 Integration with Workflows

Use prompts dynamically within workflows (e.g., generating responses in a chatbot or summarizing lengthy documents).

#### Example

> Summarize the attached text in bullet points for a business presentation.

### 6.3 Ethical Considerations

Avoid bias by framing neutral and inclusive prompts

#### Example

> Provide an unbiased overview of the advantages and disadvantages of remote work.

### 6.4 Review

**Q**: How can you make prompts domain-specific?  
**A**: By tailoring the prompt to the needs of a specific field or audience.  

**Q**: Why is it important to consider ethics in prompt engineering?  
**A**: To ensure fairness, accuracy, and neutrality in AI responses.  

**Q**: What is an example of a workflow using prompts?  
**A**: Using prompts to summarize emails automatically in a customer service system.  

### 6.5 Quiz

1. **What is a key consideration when designing domain-specific prompts?**
    - a. Making prompts generic for broader use.
    - **b. Tailoring prompts to the specific needs and audience of the field.**
    - c. Avoiding examples to keep the output creative.  
2. **How can APIs enhance the use of prompt engineering?**
    - **a. By allowing dynamic integration of prompts into applications.**
    - b. By replacing the need for well-crafted prompts.
    - c. By limiting the output length automatically.  
3. **Why are ethical considerations important in prompt engineering?**
    - a. To ensure that outputs align with user biases.
    - **b. To prevent unintended harm and ensure fairness and neutrality.**
    - c. To create more creative outputs.
