import time
import random
from colorama import Fore, init

init()


# Abstraction: Base class for developers
class Developer:
    def __init__(self, name):
        self.name = name
        print(f"\n{Fore.GREEN}Hello, {self.name}! Ready to code like a true developer.{Fore.RESET}")

    def write_code(self):
        print(f"{self.name} is writing code... {Fore.YELLOW}Yep, commas don’t place themselves!{Fore.RESET}")

    def debug(self):
        print(f"{self.name} is hunting down that mysterious bug... {Fore.CYAN}Spoiler: It's on line 42.{Fore.RESET}")
        time.sleep(2)  # Simulating debugging time
        errors = ["SyntaxError", "IndentationError", "TypeError", "NameError"]
        print(f"Found a {random.choice(errors)}! Fixing it...")

    def deploy(self):
        print(f"{self.name} is deploying the app... {Fore.RED}Seriously, who needs CI/CD pipelines when we have magic?{Fore.RESET}")
        time.sleep(3)  # Simulating deployment time

# Encapsulation: A class specifically for backend developers
class BackendDeveloper(Developer):
    def __init__(self, name, language):
        super().__init__(name)
        self.language = language  # Encapsulating the language attribute for backend devs

    def write_code(self):
        print(f"{self.name} is coding in {self.language}. {Fore.MAGENTA}Backend code? More like backend wizardry!{Fore.RESET}")

    def deploy(self):
        print(f"{self.name} is deploying the backend... {Fore.BLUE}May the cloud be with you.{Fore.RESET}")
        time.sleep(2)  # Simulating backend deployment

# Polymorphism: A frontend developer behaves differently, even with the same method names
class FrontendDeveloper(Developer):
    def __init__(self, name, framework):
        super().__init__(name)
        self.framework = framework  # Specific framework for frontend devs

    def write_code(self):
        print(f"{self.name} is building the frontend with {self.framework}. {Fore.CYAN}A beautiful interface awaits!{Fore.RESET}")

    def deploy(self):
        print(f"{self.name} is deploying the frontend... {Fore.GREEN}It’s all about that user experience!{Fore.RESET}")
        time.sleep(1)  # Simulating frontend deployment

# Main program to start
def main():
    name = input(f"{Fore.YELLOW}Welcome to the world of Python! What’s your name, young padawan? {Fore.RESET}")

    # Simple choice between frontend or backend developer
    choice = input(f"\nHey {name}, do you want to be a 'frontend' or 'backend' developer? ").lower()

    if choice == 'backend':
        dev = BackendDeveloper(name, "Python")
    elif choice == 'frontend':
        dev = FrontendDeveloper(name, "Angular")
    else:
        print(f"\nOops, {name}! It seems you didn’t pick either. Let’s just go with 'backend' for now.")
        dev = BackendDeveloper(name, "Python")

    dev.write_code()
    dev.debug()
    dev.deploy()

    print(f"\nCongratulations! You’ve completed your first development cycle. {Fore.RED}Now, grab that coffee to survive the next bug.{Fore.RESET} ☕")

if __name__ == "__main__":
    main()
