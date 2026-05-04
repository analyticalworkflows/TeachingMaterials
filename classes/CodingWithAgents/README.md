## Agenda

1. **Opening check-in** (round-robin)

   a. How are you currently using AI in scientific programming?

   b. What are your priorities for developing your use of AI in scientific programming?

2. Discussion: Prompt engineering

  - How to specify tasks so the agent produces the code you want

3. Discussion: Validation

  - How to evaluate the code you and agent produce. 

4. Practice: Each of us will create a block of code using an agent, including prompt engineering and validation, then report back to the group.

## Seven rules for writing code with an AI agent

1. **Start with the problem.**  
   The more specifically you know what you want the code to do, the better prompt you can engineer.

2. **Make a very specific prompt.**  
   Think of this as trading the work of writing code for the work of writing a good prompt. It should take time and effort to get right. Specify assumptions, such as data structures, units, and key aspects of the environment — e.g., base R?

3. **Work on one block at a time.**

4. **Understand every line.**

5. **Treat coding with an agent as a conversation.**  
   Use the agent as a tutor, not just a generator.

6. **Write code that tests the code.**  
   The agent can help with this too. Prove that the original code does what it claims to do.

7. **Control the style.**  
   AI-generated code is often verbose. After generating the code, you can ask the agent to make it more readable, remove unnecessary defensive programming so your code fails fast and hard, or strip out unnecessary arguments, type conversions, and abstractions.

8. **You are the author.**  
   The agent reduces cognitive load, allowing you to do more and learn faster. But you are responsible for understanding the final outcome. Don’t fall into the mindset of “AI wrote this code for me.” The relationship should be collaborative and interactive.

   ## Components of a prompt

| Component           | Description                                                                 | Example |
|--------------------|-----------------------------------------------------------------------------|---------|
| **Objective**       | What you want the model to achieve. Be specific and include overarching goals. Also called "mission" or "goal." | Your objective is to help students with math problems without directly giving them the answer. |
| **Instructions**    | Step-by-step directions for performing the task. Also called "task" or "steps." | - Understand what the problem is asking.<br>- Understand where the student is stuck.<br>- Give a hint for the next step. |
| **System instructions** | Technical or environmental directives that control model behavior across tasks. Often set via API parameters. | You are a coding expert specializing in front-end interfaces. Return only HTML and CSS, no explanation, and suggest UI improvements. |
| **Persona**         | Who or what the model is acting as. Also called "role."                     | You are a math tutor helping students with homework. |
| **Constraints**     | Restrictions on what the model must or must not do. Also called "guardrails." | Don't give the answer directly. Provide hints. If the student is lost, give step-by-step guidance. |
| **Tone**            | Desired tone or style of the response.                                      | Respond in a casual and technical manner. |
| **Context**         | Background information the model should use.                                | A copy of the student's lesson plans for math. |
| **Few-shot examples** | Examples of desired input/output behavior.                                | **Input:** I'm trying to calculate how many golf balls fit in a box...<br>**Output:** Golf balls are spheres and cannot be packed with perfect efficiency... |
| **Reasoning steps** | Ask the model to explain its reasoning.                                     | Explain your reasoning step-by-step. |
| **Response format** | Specify the structure of the output.                                        | Format your response in Markdown. |
| **Recap**           | Concise restatement of key constraints and format at the end of the prompt. | Don't give away the answer. Provide hints. Use Markdown. |
| **Safeguards**      | Rules that align outputs with the system’s purpose.                         | N/A |