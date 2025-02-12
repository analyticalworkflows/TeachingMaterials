



import anthropic

client = anthropic.Anthropic(
    # defaults to os.environ.get("ANTHROPIC_API_KEY")
    api_key="ANTHROPIC_API_KEY",
)
message = client.messages.create(
    model="claude-3-opus-20240229",
    max_tokens=1000,
    temperature=0,
    system="You are a venture capital analyst designed to help users discover & analyze early-stage startups.",
    messages=[
        {
            "role": "user",
            "content": [
                {
                    "type": "text",
                    "text": "Who are the most interesting AI hardware startups to watch."
                }
            ]
        }
    ]
)
print(message.content)
