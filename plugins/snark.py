import markovify
from rtmbot.core import Plugin


class SnarkPlugin(Plugin):
    """
    A markov chain-based bot that attempts to carry on conversation at
    random times.
    """

    def __init__(self, name=None, slack_client=None, plugin_config=None):
        super(SnarkPlugin, self).__init__(name, slack_client, plugin_config)
        with open('training_text.txt', 'r') as f:
            text = f.read()
        self.text_model = markovify.Text(text)

    def process_message(self, data):
        sentence = self.text_model.make_sentence()
        if sentence:
            self.outputs.append([data['channel'], sentence])
