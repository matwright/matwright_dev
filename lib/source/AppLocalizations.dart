
import 'package:flutter/material.dart';
class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'home':'Home',
      'submit':'Submit',
      'reset':'Reset',
      'mobile':'Mobile',
      'web':'Web',
      'vr':'Virtual Reality',
      'terms':'Terms & Conditions',
      'legal':'Legal',
      'research':'Research',
      'popupTitle':'Hey, thanks for stopping by!',
      'popupMessage':'This is an experimental homepage built with Flutter Web Beta',
      'contactTitle':'Contact',
      'contactEmail':'Email',
      'contactQuery':'What is your query about?',
      'contactName':'Your Name',
      'contactMessage':'Please type your message here',
      'contactAR':'Mixed/Augmented Reality',
      'contactWearable':'Wearable/IoT',
      'contactMl':'Machine Learning',
      'homeTitle': 'Creative App Development',
      'homeDescription': 'Hi! I\'m a full-stack developer & designer based in France. I build apps for a variety of platforms including web, mobile & XR. ',
      'aboutTitle': 'About',
      'aboutHeading':'Mat Wright',
      'aboutDescription':"Thanks for taking the time to visit my homepage. I have been working in app design and development since 2004. That era(~2005) coincided with the release of PHP5 and I decided to use it, along with MySQL and the rest of the LAMP ecosystem going. I went on to become a Zend Certified PHP Engineer in 2008 and to work on a variety of custom PHP and Zend Framework web apps for businesses in the UK and Europe as well as remote clients in Canada and the US.\n\nI have been lucky enough to work with amazing startups, some well known brands and even a couple of celebrities along the way!\nIn 2012 I became an employer and provided opportunities for trainees and internships with a local university.\n\nOver the past few years I have become increasingly engaged with emerging technologies; especially from a creative perspective. I now spent much of my time researching and developing apps for handheld devices aswell as virtual and mixed-reality platforms.\n\nMy research interests include gamification, the ethics of app design and machine learning.\n\nIf you would like to discuss a commercial or research based project for mobile or XR, please get in touch."
    },
    'fr': {
      'home':'Accueil',
      'submit':'Envoyer',
      'reset':'Annuler',
      'mobile':'Mobile',
      'web':'Web',
      'vr':'Réalité Virtuelle',
      'terms':'Conditions de vente',
      'legal':'Mentions Légales',
      'research':'Recherche',
      'popupTitle':'Bonjour!, merci d\'être passé !',
      'popupMessage':'Il s\'agit d\'une page d\'accueil expérimentale construite avec Flutter Web Beta',
      'contactTitle':'Contact',
      'contactEmail':'Email',
      'contactQuery':'Choisir une catégorie',
      'contactName':'Votre Nom',
      'contactMessage':'Votre Message',
      'contactAR':'Mixed/Augmented Reality',
      'contactWearable':'Wearable/IoT',
      'contactMl':'Machine Learning',
      'homeTitle': 'Création d\'Applications Innovantes ',
      'homeDescription': 'Bonjour, je suis concepteur-développeur d\'applications web, mobile & XR',
      'aboutTitle': 'A Propos',
      'aboutHeading':'Mat Wright',
      'aboutDescription':"Merci d'avoir pris le temps de visiter mon site. Je travaille dans le domaine de la conception et du développement d'applications depuis 2004. Cette époque (~2005) a coïncidé avec la sortie de PHP5 et je l'ai adopté, en même temps que MySQL et le reste de l'écosystème LAMP. Je suis devenu un ingénieur PHP certifié Zend en 2008 et j'ai travaillé sur une variété d'applications web sur mesure en PHP et Zend Framework pour des entreprises au Royaume-Uni et en Europe ainsi que pour des clients à distance au Canada et aux États-Unis.\n\n J'ai eu la chance de travailler avec des startups étonnantes, des marques connues et même quelques célébrités de la télévision en cours de route !\nEn 2012, je suis devenu employeur et j'ai offert des possibilités de stages et alternance METINET avec une université locale.\n\n Au cours des dernières années, je me suis de plus en plus intéressé aux applications portables et aux technologies immersives, en particulier d'un point de vue créatif. Je passe maintenant une grande partie de mon temps à rechercher et à développer des applications pour les appareils portables ainsi que des plates-formes de réalité virtuelle et mixte.\n\nMes intérêts de recherche comprennent la ludification, l'éthique de la conception et du développement d'applications et l'interactivité sociale par la technologie\n\nSi vous souhaitez discuter d'un projet commercial ou de recherche sur les téléphones portables ou réalité virtuelle/augmentée, n'hésitez pas à me contacter."

    }

  };
  String  translate(String text) {
    return _localizedValues[locale.languageCode][text] !=null?_localizedValues[locale.languageCode][text]:text;
  }

  String get contactTitle {
    return _localizedValues[locale.languageCode]['contactTitle'];
  }

  String get navAbout {
    return _localizedValues[locale.languageCode]['navAbout'];
  }
  String get homeTitle {
    return _localizedValues[locale.languageCode]['homeTitle'];
  }

  String get homeDescription {
    return _localizedValues[locale.languageCode]['homeDescription'];
  }
}
