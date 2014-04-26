# Haskell Image
#
# VERSION 1.0

# Use the latest ubuntu
FROM ubuntu:14.04

# Add ghc ppa
RUN echo "deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main" >> /etc/apt/sources.list.d/ghc.list
RUN echo "deb-src http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main" >> /etc/apt/sources.list.d/ghc.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 063DAB2BDC0B3F9FCEBC378BFF3AEACEF6F88286

# Update the packages
RUN apt-get update

# Install ghc and cabal
RUN sudo apt-get install -y ghc-7.8.2 cabal-install-1.20

ENV PATH /opt/ghc/7.8.2/bin:$PATH
