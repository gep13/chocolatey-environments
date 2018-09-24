# Chocolatey FOSS and Commercial
choco download chocolatey --force --internalize --internalize-all-urls --append-use-original-location --output-directory=..\packages --source="'https://chocolatey.org/api/v2/;'"

# Chocolatey GUI
choco download chocolateygui dotnet4.5.2 --force --internalize --internalize-all-urls --append-use-original-location --output-directory=..\packages --source="'https://chocolatey.org/api/v2/'"

# Chocolatey.Server Repository
choco download chocolatey.server dotnet4.6.1 --force --internalize --internalize-all-urls --append-use-original-location --output-directory=..\packages --source="'https://chocolatey.org/api/v2/'"

# Extras
choco download baretail dotnetversiondetector notepadplusplus bginfo --force --internalize --internalize-all-urls --append-use-original-location --output-directory=..\packages --source="'https://chocolatey.org/api/v2/'"
