import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio/models/app_model.dart';
import 'package:portfolio/models/color_model.dart';
import 'package:portfolio/models/device_model.dart';
import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/screen/miniProjects/about/about.dart';
import 'package:portfolio/screen/miniProjects/education/education.dart';
import 'package:portfolio/screen/miniProjects/experience/experience.dart';
import 'package:portfolio/screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, icon: Icons.tablet),
];

List<ColorModel> colorPalette = [
  const ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Color(0xff00d6ca),
    gradient: LinearGradient(
      colors: [Color(0xff00ebd5), Color(0xff293474)],
      stops: [0, 1],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Color(0xff123cd1),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Color(0xfff35a32),
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange],
    ),
  ),
];

List<AppModel> apps = [
  const AppModel(
    title: "About",
    color: Colors.white,
    icon: Icons.person,
    screen: AboutMe(),
  ),
  const AppModel(
    title: "Skills",
    color: Colors.white,
    icon: Icons.ac_unit_rounded,
    screen: Skills(),
  ),
  const AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.svg",
    color: Colors.white,
    link: linkedIn,
  ),
  const AppModel(
    title: "Instagram",
    assetPath: "assets/icons/instagram.svg",
    color: Colors.white,
    link: instagram,
  ),
  const AppModel(
    title: "Experience",
    color: Colors.white,
    icon: FontAwesomeIcons.idBadge,
    screen: Experience(),
  ),
  const AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: Education(),
  ),
  const AppModel(
    title: "Github",
    assetPath: "assets/icons/github.svg",
    color: Colors.white,
    link: github,
  ),
  const AppModel(
    title: "Play Store",
    assetPath: "assets/icons/playstore.svg",
    color: Colors.white,
    link: playApps,
  ),
];

final List<JobExperience> education = [
  const JobExperience(
    color: Colors.red,
    location: "Brasília, Brazil",
    title: 'Bachelor\'s Degree in Computer Science',
    company: 'IESB - Instituto de Educação Superior de Brasília',
    startDate: 'August 2021',
    endDate: 'Expected: June 2025',
    bulletPoints: [
      "Currently finishing my Bachelor's degree in Computer Science.",
      "Courses include Software Engineering, Database Management, and Mobile Development.",
    ],
  ),
  const JobExperience(
    color: Colors.indigo,
    location: "Brasília, DF, Brazil",
    title: 'English - B2+ Level',
    company: 'Cultura Inglesa',
    startDate: 'Jan 2019',
    endDate: 'Dec 2023',
    bulletPoints: [
      "Completed B2+ level in English, focusing on communication, writing, and comprehension.",
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  const JobExperience(
    color: Colors.blue,
    location: "Remote",
    title: 'Flutter Developer (Freelancer)',
    company: 'Upwork',
    startDate: 'Oct 2023',
    endDate: 'Mar 2025',
    bulletPoints: [
      "Developed a complete e-commerce app using MVVM, integrated with Firebase and Supabase.",
      "Implemented payment system, subscriptions, and unit testing for robustness.",
      "Led a team of 3 developers in building the Exímio Cacau app, focused on coupons and promotions.",
      "Improved performance of apps using Bloc and Provider for state management.",
      "Published and maintained the Flutter package 'brazilian_locations' on pub.dev.",
    ],
  ),
  const JobExperience(
    color: Colors.teal,
    location: "Brasília, DF, Brazil",
    title: 'Developer & System Administrator',
    company: 'Federal Regional Court of the 1st Region (TRF1)',
    startDate: 'Apr 2022',
    endDate: 'Apr 2024',
    bulletPoints: [
      "Developed a web monitoring system using Python and Flask to manage server status and services.",
      "Configured and deployed a private GitLab instance using Docker Compose.",
      "Worked with automation and infrastructure tools like Docker to optimize deployment processes.",
    ],
  ),
];

const String linkedIn =
    "https://www.linkedin.com/in/guilherme-queiroz-ribeiro/";
const String github = "https://github.com/GuiQueirozRibeiro";
const String instagram = "https://www.instagram.com/guilhermequeirozr/";
const String resumeLink =
    "https://docs.google.com/document/d/10cl9BTZ9CucY_SlmtJ1N9l9JLn2pLr9tdzzRpfzxIUc/edit?usp=sharing";
const String email = "guilherme.q.r@hotmail.com";
const String introduction =
    "Welcome to my portfolio! This website showcases some of the work I've done as a mobile developer specializing in Flutter and React Native.\n\nI have over 2 years of experience building cross-platform apps, working both as a freelancer on Upwork and in the public sector at the Federal Regional Court (TRF1). I've developed complete mobile solutions using clean architecture, BLoC, Provider, Firebase, Supabase, and more. I also contribute to the Flutter community with open-source packages like brazilian_locations.\n\nWhen I'm not coding, you'll probably find me writing, learning something new, or planning my next big move to Canada.";
const String playApps =
    "https://play.google.com/store/apps/developer?id=AppyMonk";

List<SkillsModel> skills = [
  const SkillsModel(skillName: "Flutter", colorS: Colors.blue),
  const SkillsModel(skillName: "Dart", colorS: Colors.blueAccent),
  const SkillsModel(skillName: "React Native", colorS: Colors.purple),
  const SkillsModel(skillName: "NodeJS", colorS: Colors.green),
  const SkillsModel(skillName: "Firebase", colorS: Colors.orange),
  const SkillsModel(skillName: "Supabase", colorS: Colors.teal),
  const SkillsModel(skillName: "PostgreSQL", colorS: Colors.indigo),
  const SkillsModel(skillName: "MongoDB", colorS: Colors.greenAccent),
  const SkillsModel(skillName: "REST API", colorS: Colors.lightBlue),
  const SkillsModel(skillName: "GraphQL", colorS: Colors.pinkAccent),
  const SkillsModel(skillName: "Provider", colorS: Colors.deepOrange),
  const SkillsModel(skillName: "Bloc", colorS: Colors.deepPurple),
  const SkillsModel(skillName: "SOLID", colorS: Colors.cyan),
  const SkillsModel(skillName: "CI/CD", colorS: Colors.amber),
  const SkillsModel(skillName: "Git", colorS: Colors.brown),
  const SkillsModel(skillName: "GitLab", colorS: Colors.deepOrangeAccent),
  const SkillsModel(skillName: "Docker", colorS: Colors.lightBlueAccent),
  const SkillsModel(skillName: "Python", colorS: Colors.green),
  const SkillsModel(skillName: "Flask", colorS: Colors.grey),
  const SkillsModel(skillName: "C#", colorS: Colors.blueGrey),
  const SkillsModel(skillName: "Java", colorS: Colors.redAccent),
  const SkillsModel(skillName: "HTML/CSS/JS", colorS: Colors.deepPurpleAccent),
];

List<SkillsModel> languages = [
  const SkillsModel(skillName: "Portuguese", colorS: Colors.black),
  const SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];
