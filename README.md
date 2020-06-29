

<h1 align="center" style="font-size:42px">
  Community Share
</h1>

A Flutter application for people within a community to share their needs or offers.

## Getting Started


> This package was implemented using [Flutter](https://flutter.dev/) 
<!-- Quick Links -->
<div align="center">
<a href="https://www.youtube.com/watch?v=Qy8btcuGmjI&feature=youtu.be">View Demo</a>
·
<a href="https://github.com/nareshidiga/CommunityShareApp/issues">Report Bug</a>
</div>

----

<!-- omit in toc -->
## Table of Contents
- [Authors](#authors)
- [Overview](#overview)
  - [What's the problem?](#whats-the-problem)
- [The Solution](#the-solution)
  - [How can technology help?](#how-can-technology-help)
- [How it works](#how-it-works)
- [Architecture](#architecture)
- [Implemented App interaction preview](#implemented-app-interaction-preview)
- [Technology](#technology)
  - [Flutter](#flutter)
- [Getting started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Steps](#steps)
  - [1. Run the mobile application](#4-run-the-mobile-application)
- [Roadmap](#roadmap)
- [Resources](#resources)
- [License](#license)

----

## Authors

- [Naresh Idiga](https://www.linkedin.com/in/nidiga/)
- [Narayana Madineni](https://www.linkedin.com/in/narayana-m-696b6230/)
- [Rajeshwar Godugu](https://www.linkedin.com/in/rajeshwar-godugu-b4a8b8a/)


## Overview

### What's the problem?

Covid-19 has created new challenges and has impacted many lives.

Due to the covid-19 pandemic, Residents in local communities are unable to get essential items and there are no existing apps where they can seek help

What is needed is an application that allows members in communities to connect and help each other by posting needs and offering support.

----

## The Solution

The goal is to provide a cross-platform application that enables community cooperation to fight against challenges associated with pandemics.

It allows beneficiary people (people in need of essentials etc.) to post their needs (for example, "I am running out of rice. Has anyone got a spare bag of rice?") so that other community members can offer support. 

It also allows volunteer community members to donate/offer support by posting about what they would like to offer. Benefeciary people can accept the offer and receive support

<p>
<img src="doc/demos/ScrollThroughPages_gif.gif" width="240">
&nbsp;&nbsp;
<img src="doc/demos/v2_solution_and_comments_gif.gif" width="240">
&nbsp;&nbsp;
<img src="doc/demos/v3_solution_impact_gif.gif" width="240">
</p>

----

## How it works

A problem poster (who may be a normal individual, a small business owner or a large business) that is facing challenges due to COVID-19 (or any other global or community issue) posts the problem title, description and images/video of the problem using the mobile application or web application. He/she typically fills out a brief form that describes the problem. This information is then stored in a cloudant database in the IBM Cloud.

A problem solver/innovator, who believes in community cooperation and solving problems together, opens the mobile application and can browse/search the problems posted based on the individual's preferences. He/she picks a problem, draws sketches or takes a video and uploads the title, description and images/videos about the solution. Multiple innovators can submit solutions using the user interface as well as comment on other solutions. They can share solutions through social networks to encourage collaboration and attract feedback. The application also displays identified themes, top strong comments and word cloud for the review comments. 

The problem poster(small local business owner/any individual) can choose the best solution, implement the solution and post the outcomes. The business owner rewards the innovator who posted the best solution. Using Watson AI, other similar business owners will be notified about the problem, best solution and impact based on the similarities in the profile so that they can implement the same solution for their business.

----


## Implemented App interaction preview

1. Users can browse posted needs and offers.

<p>
&nbsp;&nbsp;&nbsp;&nbsp;
<img src="doc/demos/Showing_all_posted_problems_gif.gif" width="240">
&nbsp;&nbsp;
<img src="doc/demos/Showing_all_posted_solutions_gif.gif" width="240">
</p>

2. The individual who posted the needs and offers can view their posts under the 'My Posts' tab.
   
&nbsp;&nbsp;&nbsp;&nbsp;
<img src="doc/demos/v3_solution_impact_gif.gif" width="240">
   
3. Users can contact the user who posted the need or offer as well as provide support or accept offer.
   
<p>
&nbsp;&nbsp;&nbsp;&nbsp;
<img src="doc/demos/v2_solution_and_comments_gif.gif" width="240">
&nbsp;&nbsp;
<img src="doc/demos/ContributePage_gif.gif" width="240">
</p>


----

## Technology


### Flutter

- [Building beautiful UIs with Flutter](https://codelabs.developers.google.com/codelabs/flutter/#0)

## Getting started

### Prerequisites
- Install [Flutter Get Started](https://flutter.dev/docs/get-started/install). 
- Clone the [repository](https://github.com/nareshidiga/CommunityShareApp).

### Steps
1. [Run the mobile application](#5-run-the-mobile-application).

### 1. Run the mobile application

To run the mobile application (using the Xcode iOS Simulator or Android Studio Emulator):
1. Install [Flutter SDK](https://flutter.io/get-started/install/)
1. Install [editor](https://flutter.io/get-started/editor/editor)
1. Go to the `CommunityShareApp/community_market_place` directory of the cloned repo.
1. Code can be run on 
 1. Physical Android or iOS device connected to your computer and set to developer mode.
 2. The iOS simulator (requires installing Xcode tools)
 3. The Android Emulator (requires setup in Android Studio)
 4. A browser (Chrome is required for debugging. To enable this feature run the following:
    - flutter channel beta
    - flutter upgrade
    - flutter config --enable-web

With the application running in the simulator/emulator, you should be able to navigate through the various screens

----

## Roadmap
The roadmap is to sell this application to multiple communities where admin manages each community.

----

## Resources

- [Flutter](https://flutter.dev/)
----

## License

Community Share is made available under the [Apache 2 License](LICENSE).
