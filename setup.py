from setuptools import setup, find_packages


with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name = "Anime-RS",
    version = "0.1",
    author = "Netra kc",
    packages = find_packages(),
    install_requires = requirements
)
