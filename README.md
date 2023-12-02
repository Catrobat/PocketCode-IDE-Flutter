# PocketCode-IDE-Flutter
# Regarding German to English and vice-versa translation feature using Localization (l10n) library.
Points to follow :
1) The language map is created in the lib/l10n directory.
2) The language map for English (en) is intl_en.dart.
3) The language map for German (de) is intl_de.dart.
4) The language can be changed for now through the main.dart file by changing language code passed in the Locale class constructor of the locale parameter of the MaterialApp class constructor.
5) Whenever a new text is added in the app the developer will has to add the word with its translation and description in the language map files mentioned in points 2 and 3.
6) Use the command  flutter gen-l10n to update or re-generate the localization files to use the newly added words.\
7) The translated word is used like this => S.of(context).<variable-name-in-map> 
